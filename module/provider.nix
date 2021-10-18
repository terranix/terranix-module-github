{ config, lib, pkgs, ... }:
with lib;
let cfg = config.github.provider;
in {
  options.github.provider = {
    enable = mkEnableOption "github";
    owner = mkOption {
      default = null;
      type = with types; nullOr str;
      description = ''
        Organization or individual user account to manage.
        It is optional to provide this value and it can also be sourced from the
        `GITHUB_OWNER` environment variable.
        When not provided and a `github.provider.token` is available,
        the individual user account owning the token will be used.
        When not provided and no `token` is available,
        the provider may not function correctly
      '';
    };
    version = mkOption {
      default = null;
      type = with types; nullOr str;
      description = ''
        version of the github provider to use.
      '';
    };
    token = mkOption {
      default = null;
      type = with types; nullOr str;
      description = ''
        A GitHub OAuth or Personal Access Token.
        It can also be sourced from the
        `GITHUB_TOKEN` environment variable.
        hen not provided or made available via the
        `GITHUB_TOKEN` environment variable,
        the provider can only access resources available anonymously.
      '';
    };
    base_url = mkOption {
      default = null;
      type = with types; nullOr str;
      description = ''
        This is the target GitHub base API endpoint.
        Providing a value is a requirement when working with GitHub Enterprise.
        It is optional to provide this value and it can also be sourced from the
        `GITHUB_BASE_URL` environment variable.
        The value must end with a slash.
      '';
      example = "https://terraformtesting-ghe.westus.cloudapp.azure.com/";
    };
  };

  config = mkIf cfg.enable {
    terraform.required_providers.github = {
      source = "integrations/github";
      inherit (cfg) version;
    };
    provider.github = { inherit (cfg) owner token base_url; };
  };
}
