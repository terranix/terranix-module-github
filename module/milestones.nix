{ config, lib, pkgs, ... }:
with lib;
let cfg = config.github.milestones;
in {
  options.github.milestones = mkOption {
    default = [ ];
    description = ''
      Define milestones.
      This parameter is a bit complicated because the
      terraform provider resource is a bit complicated designed.
      You have to create a list for each repository.
    '';
    example = [
      {
        owner = "terranix";
        repository = "terranix";
        milestones = [
          { title = "1.0"; state = "closed"; }
          { title = "2.0"; }
        ];
      }
    ];
    type = with types;
      listOf (submodule {
        options = {
          owner = mkOption {
            type = str;
            description = ''
              owner of the repository.
              same value which you would put in github.provider.owner.
            '';
          };
          repository = mkOption {
            type = str;
            description = "name of the repository";
          };
          milestones = mkOption {
            default = [ ];
            description = "list of milestones for the given repository";
            type = listOf (submodule {
              options = {
                title = mkOption {
                  type = str;
                  description = ''
                    title of the milestone.
                  '';
                  example = "1.0";
                };
                state = mkOption {
                  type = nullOr (enum [ "open" "closed" ]);
                  default = null;
                  description = "state of the milestone";
                };
                description = mkOption {
                  type = nullOr str;
                  default = null;
                  description = "description of the milestone";
                };
                due_date = mkOption {
                  type = nullOr str;
                  default = null;
                  description = ''
                    due date of the milestone.
                    Format is yyyy-mm-dd.
                  '';
                };
              };
            });
          };
        };
      });
  };

  config = {
    resource.github_repository_milestone = mkMerge (flatten (map
      ({ owner, repository, milestones, ... }:
        (map
          ({ title, state, description, due_date }:
            let
              name = replaceStrings [ "." "," "/" ] [ "_" "_" "_" ]
                "${owner}_${repository}_${title}";
            in
            {
              ${name} = {
                inherit title state description due_date owner repository;
              };
            })
          milestones)

      )
      cfg));

  };

}
