# github options

- github.milestones
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.milestones
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.milestones.*.description
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.milestones.*.due_date
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.milestones.*.state
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.milestones.*.title
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.owner
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.milestones.*.repository
  description: This option has no description.</br>
  defined: [module/milestones.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/milestones.nix)</br>
- github.provider.base_url
  description: This option has no description.</br>
  defined: [module/provider.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/provider.nix)</br>
- github.provider.enable
  description: Whether to enable github.</br>
  defined: [module/provider.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/provider.nix)</br>
- github.provider.owner
  description: This option has no description.</br>
  defined: [module/provider.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/provider.nix)</br>
- github.provider.token
  description: This option has no description.</br>
  defined: [module/provider.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/provider.nix)</br>
- github.provider.version
  description: This option has no description.</br>
  defined: [module/provider.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/provider.nix)</br>
- github.repositories
  description: This option has no description.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.allow_merge_commit
  description: Set to false to disable merge commits on the repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.allow_rebase_merge
  description: Set to false to disable rebase merges on the repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.allow_squash_merge
  description: Set to false to disable squash merges on the repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.archive_on_destroy
  description: Set to true to archive the repository instead of deleting on destroy.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.archived
  description: Specifies if the repository should be archived. Defaults to false</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.auto_init
  description: Set to true to produce an initial commit in the repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.branches
  description: branches of repository
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.colaborators
  description: collaborators of repository
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.colaborators.&lt;name&gt;.name
  description: github name</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.colaborators.&lt;name&gt;.permission
  description: permissions of this collaborator</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.default_branch
  description: default branch of the repository
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.delete_branch_on_merge
  description: Automatically delete head branch after a pull request is merged. Defaults to false</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.description
  description: description of the repository</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.extraConfig
  description: To set additional parameters from
https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
which are not covered yet.
extraConfig will override every other parameter provider by this github terranix module.
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.gitignore_template
  description: Use the [name of the template](https://github.com/github/gitignore) without the extension.
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.has_downloads
  description: Set to true to enable the (deprecated) downloads features on the repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.has_issues
  description: should the repository have issue tracking</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.has_projects
  description: should the repository have projects</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.has_wiki
  description: should the repository have a wiki</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.homepage_url
  description: homepage url of the repository</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.is_template
  description: is this repository a template</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.license_template
  description: Use the [name of the template](https://github.com/github/choosealicense.com/tree/gh-pages/_licenses) without the extension.
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.name
  description: name of the repository</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.pages
  description: The repository&#39;s GitHub Pages configuration. </br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.pages.cname
  description: The custom domain for the repository. This can only be set after the repository has been created.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.pages.source
  description: The source branch and directory for the rendered Pages site.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.pages.source.branch
  description: The repository branch used to publish the site&#39;s source files.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.pages.source.path
  description: The repository directory from which the site publishes</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.teams
  description: list of teams this repository belongs to.
convenience function, which appends this repository to github.teams;
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.template
  description: Use a template repository to create this resource.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.template.owner
  description: The GitHub organization or user the template repository is owned by.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.template.repository
  description: The name of the template repository.</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.topics
  description: list of topics for the repository</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.visibility
  description: wether of the repository is private or not</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.repositories.&lt;name&gt;.vulnerability_alerts
  description: Set to true to enable security alerts for vulnerable dependencies.
Enabling requires alerts to be enabled on the owner level
</br>
  defined: [module/repositories.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/repositories.nix)</br>
- github.teams
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.description
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.extraConfig
  description: To set additional parameters from
https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team
which are not covered yet.
extraConfig will override every other parameter provider by this github terranix module.
</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.maintainers
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.members
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.name
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.privacy
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
- github.teams.&lt;name&gt;.repositories
  description: This option has no description.</br>
  defined: [module/teams.nix](https://github.com/terranix/module-github/tree/main/modulesmodule/teams.nix)</br>
