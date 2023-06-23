{ config, lib, pkgs, ... }:
with lib;
let cfg = config.github.teams;
in {
  options.github.teams = mkOption {
    default = { };
    description = ''
      create and manage github teams.
      You can use `github.repositories.<name>.teams`
      to append your managed repositores to a team.
    '';
    type = with types;
      attrsOf (submodule
        ({ name, ... }: {
          options = {

            # inherited parameter
            # -------------------

            name = mkOption {
              default = name;
              type = str;
              description = ''
                name of the team.
              '';
            };
            description = mkOption {
              default = null;
              type = nullOr str;
              description = ''
                description of the team.
              '';
            };
            privacy = mkOption {
              default = null;
              type = nullOr (enum [ "secret" "closed" ]);
              description = ''
                secret means not visible for the public.
                closed means visible for the public.
              '';
            };

            # special parameter
            # -----------------

            extraConfig = mkOption {
              type = attrs;
              default = { };
              description = ''
                To set additional parameters from
                https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team
                which are not covered yet.
                extraConfig will override every other parameter provider by this github terranix module.
              '';
            };

            members = mkOption {
              default = [ ];
              type = listOf str;
              description = ''
                members of the team, have less permissions than maintainers.
              '';
              example = [ "mrvandalo" ];
            };
            maintainers = mkOption {
              default = [ ];
              type = listOf str;
              description = ''
                maintainers of the team, have more permissions than members.
              '';
              example = [ "mrvandalo" ];
            };
            repositories = mkOption {
              type = attrsOf (enum [ "pull" "triage" "push" "maintain" "admin" ]);
              default = { };
              description = ''
                A list of Github repositories, belonging to this team.
                You can use `github.repositories.<name>.teams`
                alternatively to append you managed repository to a team.
              '';
              example = { terranix = "pull"; website = "maintain"; };
            };

          };
        }));
  };

  config =
    let mergeAll = function: mkMerge (flatten (mapAttrsToList function cfg));
    in mkIf (cfg != { }) {

      resource.github_team = mapAttrs
        (name: value:
          {
            inherit (value) name description privacy;
          } // value.extraConfig)
        cfg;

      resource.github_team_membership = mergeAll (team_name:
        { name, maintainers, members, ... }:
        (map
          (maintainer: {
            "${team_name}_maintainer_${maintainer}" = {
              team_id = "\${github_team.${team_name}.id}";
              username = maintainer;
              role = "maintainer";
            };
          })
          (unique maintainers)) ++
        (map
          (member: {
            "${team_name}_member_${member}" = {
              team_id = "\${github_team.${team_name}.id}";
              username = member;
              role = "member";
            };
          })
          (unique members)));

      resource.github_team_repository = mergeAll (team_name: { repositories, ... }:
        map
          ({ name, value }: {
            "${team_name}_team_repository_${name}" = {
              team_id = "\${github_team.${team_name}.id}";
              repository = name;
              permission = value;
            };
          })
          (mapAttrsToList nameValuePair repositories)
      );

    };

}
