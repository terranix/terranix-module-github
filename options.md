# github options

<ul>
<li>
  <b><u>github.milestones</u></b><br>
  <b>type</b>: list of submodules<br>
  <b>default</b>: []<br>
  <b>example</b>: [{&#34;milestones&#34;:[{&#34;state&#34;:&#34;closed&#34;,&#34;title&#34;:&#34;1.0&#34;},{&#34;title&#34;:&#34;2.0&#34;}],&#34;owner&#34;:&#34;terranix&#34;,&#34;repository&#34;:&#34;terranix&#34;}]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: Define milestones.
This parameter is a bit complicated because the
terraform provider resource is a bit complicated designed.
You have to create a list for each repository.
<br>
</li>
<li>
  <b><u>github.milestones.*.milestones</u></b><br>
  <b>type</b>: list of submodules<br>
  <b>default</b>: []<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: list of milestones for the given repository<br>
</li>
<li>
  <b><u>github.milestones.*.milestones.*.description</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: description of the milestone<br>
</li>
<li>
  <b><u>github.milestones.*.milestones.*.due_date</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: due date of the milestone.
Format is yyyy-mm-dd.
<br>
</li>
<li>
  <b><u>github.milestones.*.milestones.*.state</u></b><br>
  <b>type</b>: null or one of &#34;open&#34;, &#34;closed&#34;<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: state of the milestone<br>
</li>
<li>
  <b><u>github.milestones.*.milestones.*.title</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: &#34;1.0&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: title of the milestone.
<br>
</li>
<li>
  <b><u>github.milestones.*.owner</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: owner of the repository.
same value which you would put in github.provider.owner.
<br>
</li>
<li>
  <b><u>github.milestones.*.repository</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/milestones.nix">module/milestones.nix</a><br>
  <b>description</b>: name of the repository<br>
</li>
<li>
  <b><u>github.provider.base_url</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: &#34;https://terraformtesting-ghe.westus.cloudapp.azure.com/&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/provider.nix">module/provider.nix</a><br>
  <b>description</b>: This is the target GitHub base API endpoint.
Providing a value is a requirement when working with GitHub Enterprise.
It is optional to provide this value and it can also be sourced from the
`GITHUB_BASE_URL` environment variable.
The value must end with a slash.
<br>
</li>
<li>
  <b><u>github.provider.enable</u></b><br>
  <b>type</b>: boolean<br>
  <b>default</b>: false<br>
  <b>example</b>: true<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/provider.nix">module/provider.nix</a><br>
  <b>description</b>: Whether to enable github.<br>
</li>
<li>
  <b><u>github.provider.owner</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/provider.nix">module/provider.nix</a><br>
  <b>description</b>: Organization or individual user account to manage.
It is optional to provide this value and it can also be sourced from the
`GITHUB_OWNER` environment variable.
When not provided and a `github.provider.token` is available,
the individual user account owning the token will be used.
When not provided and no `token` is available,
the provider may not function correctly
<br>
</li>
<li>
  <b><u>github.provider.token</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/provider.nix">module/provider.nix</a><br>
  <b>description</b>: A GitHub OAuth or Personal Access Token.
It can also be sourced from the
`GITHUB_TOKEN` environment variable.
hen not provided or made available via the
`GITHUB_TOKEN` environment variable,
the provider can only access resources available anonymously.
<br>
</li>
<li>
  <b><u>github.provider.version</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/provider.nix">module/provider.nix</a><br>
  <b>description</b>: version of the github provider to use.
<br>
</li>
<li>
  <b><u>github.repositories</u></b><br>
  <b>type</b>: attribute set of submodules<br>
  <b>default</b>: {}<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: create and manage github repositories.
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.allow_merge_commit</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to false to disable merge commits on the repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.allow_rebase_merge</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to false to disable rebase merges on the repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.allow_squash_merge</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to false to disable squash merges on the repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.archive_on_destroy</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to true to archive the repository instead of deleting on destroy.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.archived</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Specifies if the repository should be archived. Defaults to false<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.auto_init</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to true to produce an initial commit in the repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.branches</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: null<br>
  <b>example</b>: [&#34;main&#34;,&#34;develop&#34;]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: branches of repository
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.colaborators</u></b><br>
  <b>type</b>: attribute set of submodules<br>
  <b>default</b>: {}<br>
  <b>example</b>: [&#34;main&#34;,&#34;develop&#34;]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: collaborators of repository
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.colaborators.&lt;name&gt;.name</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: &#34;‹name›&#34;<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: github name<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.colaborators.&lt;name&gt;.permission</u></b><br>
  <b>type</b>: null or one of &#34;pull&#34;, &#34;push&#34;, &#34;maintain&#34;, &#34;triage&#34;, &#34;admin&#34;<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: permissions of this collaborator<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.default_branch</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: &#34;main&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: default branch of the repository
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.delete_branch_on_merge</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Automatically delete head branch after a pull request is merged. Defaults to false<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.description</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: description of the repository<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.extraConfig</u></b><br>
  <b>type</b>: attribute set<br>
  <b>default</b>: {}<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: To set additional parameters from
https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
which are not covered yet.
extraConfig will override every other parameter provider by this github terranix module.
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.gitignore_template</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: &#34;Haskell&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Use the [name of the template](https://github.com/github/gitignore) without the extension.
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.has_downloads</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to true to enable the (deprecated) downloads features on the repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.has_issues</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: should the repository have issue tracking<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.has_projects</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: should the repository have projects<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.has_wiki</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: should the repository have a wiki<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.homepage_url</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: homepage url of the repository<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.is_template</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: is this repository a template<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.license_template</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: &#34;mpl-2.0&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Use the [name of the template](https://github.com/github/choosealicense.com/tree/gh-pages/_licenses) without the extension.
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.name</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: &#34;‹name›&#34;<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: name of the repository<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.pages</u></b><br>
  <b>type</b>: null or submodule<br>
  <b>default</b>: null<br>
  <b>example</b>: {&#34;pages&#34;:{&#34;source&#34;:{&#34;branch&#34;:&#34;gh-pages&#34;}}}<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The repository&#39;s GitHub Pages configuration. <br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.pages.cname</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The custom domain for the repository. This can only be set after the repository has been created.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.pages.source</u></b><br>
  <b>type</b>: submodule<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The source branch and directory for the rendered Pages site.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.pages.source.branch</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The repository branch used to publish the site&#39;s source files.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.pages.source.path</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The repository directory from which the site publishes<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.teams</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: []<br>
  <b>example</b>: &#34;main&#34;<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: list of teams this repository belongs to.
convenience function, which appends this repository to github.teams;
<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.template</u></b><br>
  <b>type</b>: null or submodule<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Use a template repository to create this resource.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.template.owner</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The GitHub organization or user the template repository is owned by.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.template.repository</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: The name of the template repository.<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.topics</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: []<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: list of topics for the repository<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.visibility</u></b><br>
  <b>type</b>: null or one of &#34;private&#34;, &#34;public&#34;, &#34;internal&#34;<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: wether of the repository is private or not<br>
</li>
<li>
  <b><u>github.repositories.&lt;name&gt;.vulnerability_alerts</u></b><br>
  <b>type</b>: null or boolean<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/repositories.nix">module/repositories.nix</a><br>
  <b>description</b>: Set to true to enable security alerts for vulnerable dependencies.
Enabling requires alerts to be enabled on the owner level
<br>
</li>
<li>
  <b><u>github.teams</u></b><br>
  <b>type</b>: attribute set of submodules<br>
  <b>default</b>: {}<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: create and manage github teams.
You can use `github.repositories.&lt;name&gt;.teams`
to append your managed repositores to a team.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.description</u></b><br>
  <b>type</b>: null or string<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: description of the team.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.extraConfig</u></b><br>
  <b>type</b>: attribute set<br>
  <b>default</b>: {}<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: To set additional parameters from
https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team
which are not covered yet.
extraConfig will override every other parameter provider by this github terranix module.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.maintainers</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: []<br>
  <b>example</b>: [&#34;mrvandalo&#34;]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: maintainers of the team, have more permissions than members.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.members</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: []<br>
  <b>example</b>: [&#34;mrvandalo&#34;]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: members of the team, have less permissions than maintainers.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.name</u></b><br>
  <b>type</b>: string<br>
  <b>default</b>: &#34;‹name›&#34;<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: name of the team.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.privacy</u></b><br>
  <b>type</b>: null or one of &#34;secret&#34;, &#34;closed&#34;<br>
  <b>default</b>: null<br>
  <b>example</b>: null<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: secret means not visible for the public.
closed means visible for the public.
<br>
</li>
<li>
  <b><u>github.teams.&lt;name&gt;.repositories</u></b><br>
  <b>type</b>: list of strings<br>
  <b>default</b>: []<br>
  <b>example</b>: [&#34;terranix&#34;,&#34;website&#34;]<br>
  <b>defined</b>: <a href="https://github.com/terranix/terranix-module-github/tree/main/modulemodule/teams.nix">module/teams.nix</a><br>
  <b>description</b>: A list of Github repositories, belonging to this team.
You can use `github.repositories.&lt;name&gt;.teams`
alternatively to append you managed repository to a team.
<br>
</li>
</ul>
