# Gitty

A client for the [GitHub REST API v3](https://developer.github.com/v3/), written in Bash.


## Installation

A reasonably sane GNU environment is assumed to be at hand. More specifically, you need:

* Bash (of course)
* GNU Coreutils
* GNU grep, sed, awk
* curl
* the [jq](https://stedolan.github.io/jq/) command-line JSON processor
* Make

To run the test suite, you will need Sam Stephenson's [Bash Automated Testing System](https://github.com/sstephenson/bats).

To check for proper programming, you will need [ShellCheck](https://www.shellcheck.net/).


## Configuration

### Authentication

The library supports both basic and OAuth authentication.

Basic authentication is supported through the environment variable `GITTY_API_BASIC_AUTH`, which must contain the username.

[OAuth authentication](https://developer.github.com/apps/building-oauth-apps/), on the other hand, is supported through the environment variable `GITTY_API_OAUTH_TOKEN`.

### User agent

All API requests [MUST](https://developer.github.com/v3/#user-agent-required) include a valid `User-Agent` header. The library supports a custom header through the environment variable `GITTY_USER_AGENT`.


## Similar Projects

* [ok.sh](https://github.com/whiteinge/ok.sh)


## Implemented Parts

The active links represent implemented parts of the full API.


* Activity
    - [Events](https://developer.github.com/v3/activity/events/)
    - Event Types & Payloads
    - [Feeds](https://developer.github.com/v3/activity/feeds/)
    - Notifications
    - [Starring](https://developer.github.com/v3/activity/starring/)
    - Watching

* [Emojis](https://docs.github.com/en/rest/reference/emojis)

* [Gists](https://developer.github.com/v3/gists/)
    - [Comments](https://developer.github.com/v3/gists/comments/)
* Git Data
    - Blobs
    - Commits
    - References
    - Tags
    - Trees
* GitHub Apps
    - Installations
    - GitHub Marketplace
    - Permissions
    - Available Endpoints
* Issues
    - Assignees
    - Comments
    - Events
    - Labels
    - Milestones
    - Timeline
* Migration
    - Migrations
    - Source Imports
* [Miscellaneous](https://developer.github.com/v3/misc/)
    - [Codes of Conduct](https://developer.github.com/v3/codes_of_conduct/)
    - [Gitignore](https://developer.github.com/v3/gitignore/)
    - [Licenses](https://developer.github.com/v3/licenses/)
    - [Markdown](https://developer.github.com/v3/markdown/)
    - [Meta](https://developer.github.com/v3/meta/)
    - [Rate Limit](https://developer.github.com/v3/rate_limit/)
* [Organizations](https://developer.github.com/v3/orgs/)
    - [Blocking Users](https://developer.github.com/v3/orgs/blocking/)
    - Members
    - Outside Collaborators
    - Webhooks
* [Projects](https://developer.github.com/v3/projects/)
    - Cards
    - Collaborators
    - Columns
* Pull Requests
    - Reviews
    - Review Comments
    - Review Requests
* Reactions
    - Commit Comment
    - Issue
    - Issue Comment
    - Pull Request Review Comment
    - Team Discussion
    - Team Discussion Comment
* Repositories
    - Branches
    - Collaborators
    - [Comments](https://developer.github.com/v3/repos/comments/)
    - Commits
    - Community
    - Contents
    - Deploy Keys
    - Deployments
    - ~~Downloads~~ ([deprecated](https://developer.github.com/v3/repos/downloads/))
    - [Forks](https://developer.github.com/v3/repos/forks/)
    - Invitations
    - Merging
    - Pages
    - Releases
    - Statistics
    - Statuses
    - Traffic
    - Webhooks
* [Search](https://developer.github.com/v3/search/)
    - [Repositories](https://developer.github.com/v3/search/#search-repositories)
    - [Code](https://developer.github.com/v3/search/#search-code)
    - [Commits](https://developer.github.com/v3/search/#search-commits)
    - [Issues](https://developer.github.com/v3/search/#search-issues-and-pull-requests)
    - [Users](https://developer.github.com/v3/search/#search-users)
    - [Topics](https://developer.github.com/v3/search/#search-topics)
    - [Labels](https://developer.github.com/v3/search/#search-labels)
    - Text match metadata
    - Legacy search
* Teams
    - Discussions
    - Discussion comments
    - Members
* SCIM
* Users
    - [Blocking Users](https://developer.github.com/v3/users/blocking/)
    - [Emails](https://developer.github.com/v3/users/emails/)
    - [Followers](https://developer.github.com/v3/users/followers/)
    - Git SSH Keys
    - GPG Keys


## API Reference

### `api`

* [`api::count`](#apicount)
* [`api::delete`](#apidelete)
* [`api::endpoint`](#apiendpoint)
* [`api::extract_header_value`](#apiextract_header_value)
* [`api::extract_rel`](#apiextract_rel)
* [`api::extract_rels`](#apiextract_rels)
* [`api::filter`](#apifilter)
* [`api::get`](#apiget)
* [`api::header`](#apiheader)
* [`api::header_value`](#apiheader_value)
* [`api::last`](#apilast)
* [`api::next`](#apinext)
* [`api::paginate`](#apipaginate)
* [`api::patch`](#apipatch)
* [`api::post`](#apipost)
* [`api::post200`](#apipost200)
* [`api::post202`](#apipost202)
* [`api::put`](#apiput)
* [`api::request`](#apirequest)
* [`api::status`](#apistatus)
* [`api::version`](#apiversion)

### `auth`

* [`auth::am_following`](#autham_following)
* [`auth::block`](#authblock)
* [`auth::blocked_users`](#authblocked_users)
* [`auth::emails`](#authemails)
* [`auth::followers`](#authfollowers)
* [`auth::following`](#authfollowing)
* [`auth::have_blocked`](#authhave_blocked)
* [`auth::orgs`](#authorgs)
* [`auth::public_emails`](#authpublic_emails)
* [`auth::public_timeline`](#authpublic_timeline)
* [`auth::public_timeline_url`](#authpublic_timeline_url)
* [`auth::repos`](#authrepos)
* [`auth::starred_gists`](#authstarred_gists)
* [`auth::starred_repos`](#authstarred_repos)
* [`auth::unblock`](#authunblock)

### `commit`

* [`commit::comments`](#commitcomments)

### `commit_comment`

* [`commit_comment::create`](#commit_commentcreate)
* [`commit_comment::delete`](#commit_commentdelete)
* [`commit_comment::edit`](#commit_commentedit)
* [`commit_comment::get`](#commit_commentget)
* [`commit_comment::path`](#commit_commentpath)
* [`commit_comment::position`](#commit_commentposition)
* [`commit_comment::ref`](#commit_commentref)
* [`commit_comment::text`](#commit_commenttext)

### `conduct`

* [`conduct::name`](#conductname)
* [`conduct::text`](#conducttext)
* [`conduct::url`](#conducturl)

### `defs`



### `emails`

* [`emails::add`](#emailsadd)
* [`emails::delete`](#emailsdelete)
* [`emails::toggle_primary_visibility`](#emailstoggle_primary_visibility)

### `emojis`

* [`emojis::all`](#emojisall)

### `events`

* [`events::network`](#eventsnetwork)
* [`events::org`](#eventsorg)
* [`events::public`](#eventspublic)
* [`events::repo`](#eventsrepo)
* [`events::user_org_received_events`](#eventsuser_org_received_events)
* [`events::user_public_received`](#eventsuser_public_received)
* [`events::user_received`](#eventsuser_received)

### `gist`

* [`gist::clone`](#gistclone)
* [`gist::comments`](#gistcomments)
* [`gist::commits`](#gistcommits)
* [`gist::create`](#gistcreate)
* [`gist::delete`](#gistdelete)
* [`gist::describe`](#gistdescribe)
* [`gist::download`](#gistdownload)
* [`gist::edit`](#gistedit)
* [`gist::files`](#gistfiles)
* [`gist::fork`](#gistfork)
* [`gist::forks`](#gistforks)
* [`gist::get`](#gistget)
* [`gist::is_starred`](#gistis_starred)
* [`gist::owner`](#gistowner)
* [`gist::public`](#gistpublic)
* [`gist::star`](#giststar)
* [`gist::unstar`](#gistunstar)

### `gist_comment`

* [`gist_comment::create`](#gist_commentcreate)
* [`gist_comment::delete`](#gist_commentdelete)
* [`gist_comment::edit`](#gist_commentedit)
* [`gist_comment::get`](#gist_commentget)
* [`gist_comment::text`](#gist_commenttext)
* [`gist_comment::user`](#gist_commentuser)

### `github`

* [`github::conducts`](#githubconducts)
* [`github::gitignores`](#githubgitignores)
* [`github::git_servers`](#githubgit_servers)
* [`github::hooks`](#githubhooks)
* [`github::importers`](#githubimporters)
* [`github::licenses`](#githublicenses)
* [`github::orgs`](#githuborgs)
* [`github::pages`](#githubpages)
* [`github::password_auth`](#githubpassword_auth)
* [`github::repos`](#githubrepos)
* [`github::sha`](#githubsha)
* [`github::timeline`](#githubtimeline)
* [`github::timeline_url`](#githubtimeline_url)
* [`github::users`](#githubusers)

### `gitignore`

* [`gitignore::content`](#gitignorecontent)

### `help`

* [`help::method_desc`](#helpmethod_desc)
* [`help::methods`](#helpmethods)
* [`help::modules`](#helpmodules)

### `json`

* [`json::build_array`](#jsonbuild_array)

### `license`

* [`license::describe`](#licensedescribe)
* [`license::name`](#licensename)
* [`license::text`](#licensetext)

### `markdown`

* [`markdown::from_file`](#markdownfrom_file)
* [`markdown::from_stream`](#markdownfrom_stream)
* [`markdown::from_string`](#markdownfrom_string)

### `network`

* [`network::events`](#networkevents)

### `org`

* [`org::block`](#orgblock)
* [`org::blocked_users`](#orgblocked_users)
* [`org::company`](#orgcompany)
* [`org::describe`](#orgdescribe)
* [`org::edit`](#orgedit)
* [`org::email`](#orgemail)
* [`org::events`](#orgevents)
* [`org::get`](#orgget)
* [`org::is_blocked`](#orgis_blocked)
* [`org::location`](#orglocation)
* [`org::name`](#orgname)
* [`org::projects`](#orgprojects)
* [`org::repos`](#orgrepos)
* [`org::unblock`](#orgunblock)
* [`org::url`](#orgurl)

### `path`

* [`path::content`](#pathcontent)
* [`path::ls`](#pathls)
* [`path::type`](#pathtype)

### `project`

* [`project::create`](#projectcreate)
* [`project::creator`](#projectcreator)
* [`project::delete`](#projectdelete)
* [`project::edit`](#projectedit)
* [`project::get`](#projectget)
* [`project::name`](#projectname)
* [`project::state`](#projectstate)
* [`project::text`](#projecttext)

### `rate_limit`

* [`rate_limit::limit`](#rate_limitlimit)
* [`rate_limit::remaining`](#rate_limitremaining)
* [`rate_limit::reset`](#rate_limitreset)

### `repo`

* [`repo::by_id`](#repoby_id)
* [`repo::comments`](#repocomments)
* [`repo::commits`](#repocommits)
* [`repo::conduct`](#repoconduct)
* [`repo::create`](#repocreate)
* [`repo::delete`](#repodelete)
* [`repo::events`](#repoevents)
* [`repo::fork`](#repofork)
* [`repo::forks`](#repoforks)
* [`repo::is_starred`](#repois_starred)
* [`repo::license`](#repolicense)
* [`repo::projects`](#repoprojects)
* [`repo::readme`](#reporeadme)
* [`repo::star`](#repostar)
* [`repo::stargazers`](#repostargazers)
* [`repo::tags`](#repotags)
* [`repo::topics`](#repotopics)
* [`repo::unstar`](#repounstar)

### `root`

* [`root::events`](#rootevents)

### `search`

* [`search::code`](#searchcode)
* [`search::commits`](#searchcommits)
* [`search::issues`](#searchissues)
* [`search::labels`](#searchlabels)
* [`search::repositories`](#searchrepositories)
* [`search::topics`](#searchtopics)
* [`search::users`](#searchusers)

### `user`

* [`user::follow`](#userfollow)
* [`user::followers`](#userfollowers)
* [`user::following`](#userfollowing)
* [`user::gists`](#usergists)
* [`user::is_following`](#useris_following)
* [`user::keys`](#userkeys)
* [`user::org_received_events`](#userorg_received_events)
* [`user::public_received_events`](#userpublic_received_events)
* [`user::received_events`](#userreceived_events)
* [`user::repos`](#userrepos)
* [`user::starred_repos`](#userstarred_repos)
* [`user::timeline`](#usertimeline)
* [`user::timeline_url`](#usertimeline_url)
* [`user::unfollow`](#userunfollow)

## Methods Description

### `api::count`

Get the number of result pages.

### `api::delete`

Delete a resouce.

### `api::endpoint`

Get API root endpoint.

### `api::extract_header_value`

Extract a given value from the HTTP headers.

### `api::extract_rel`

Get the Link header values.
Get the link relation for the given page of results.

### `api::extract_rels`

Get the Link header values.

### `api::filter`

Filter JSON content.

### `api::get`

Retrieve a resource.

### `api::header`

Get the HTTP headers.
Extract a given value from the HTTP headers.

### `api::header_value`

Extract a given value from the HTTP headers.

### `api::last`

Get the link relation for the last page of results.

### `api::next`

Get the link relation for the next page of results.

### `api::paginate`

Get paginated items.

### `api::patch`

Update a resource with partial JSON data.

### `api::post`

Create a resource.
Specialized POST method that expects a 200 status code.
Create a resource in an asynchronous fashion.

### `api::post200`

Specialized POST method that expects a 200 status code.

### `api::post202`

Create a resource in an asynchronous fashion.

### `api::put`

Replace a resource or a collection.

### `api::request`

Make a generic HTTP request.

### `api::status`

Get the HTTP status code.

### `api::version`

Get API version.

### `auth::am_following`

Check if the authorized user follows another.

### `auth::block`

Block a user.
List the users the authenticated user has blocked on her personal account.

### `auth::blocked_users`

List the users the authenticated user has blocked on her personal account.

### `auth::emails`

List email addresses for the authenticated user.

### `auth::followers`

List followers of the authenticated user.

### `auth::following`

List who the authenticated user is following.

### `auth::have_blocked`

Check whether the authorized user has blocked another user.

### `auth::orgs`

List all the organizations for the authenticated user.

### `auth::public_emails`

List public email addresses for the authenticated user.

### `auth::public_timeline`

Get the public timeline for the authenticated user, in Atom format.
Get the public timeline URI for the authenticated user.

### `auth::public_timeline_url`

Get the public timeline URI for the authenticated user.

### `auth::repos`

List all the repositories for the authenticated user.

### `auth::starred_gists`

List all the starred gists for the authenticated user.

### `auth::starred_repos`

List repositories being starred by the specified user.

### `auth::unblock`

Unblock a user.

### `commit::comments`

List comments for a commit.

### `commit_comment::create`

Create a commit comment.

### `commit_comment::delete`

Delete a commit comment.

### `commit_comment::edit`

Update a commit comment.

### `commit_comment::get`

Get a single commit comment.

### `commit_comment::path`

Get the path of a single commit comment.

### `commit_comment::position`

Get the position of a single commit comment.

### `commit_comment::ref`

Get the commit ID of a single commit comment.

### `commit_comment::text`

Get the text of a single commit comment.

### `conduct::name`

Get the name of an individual code of conduct.

### `conduct::text`

Get the text of an individual code of conduct.

### `conduct::url`

Get the url of an individual code of conduct.

### `emails::add`

Add email address(es).

### `emails::delete`

Delete email address(es).

### `emails::toggle_primary_visibility`

Toggle primary email visibility.

### `emojis::all`

Lists all the emojis available to use on GitHub.

### `events::network`

List public events for a network of repositories

### `events::org`

List public organization events.

### `events::public`

List public events IDs.

### `events::repo`

List repository events IDs.

### `events::user_org_received_events`

List organization events for the authenticated user.

### `events::user_public_received`

List public events for a user.

### `events::user_received`

List events received by the authenticated user.

### `gist::clone`

Download gist files.

### `gist::comments`

List comments on a gist.

### `gist::commits`

List gist commits.

### `gist::create`

Create a gist.

### `gist::delete`

Delete a gist.

### `gist::describe`

Describe a gist.

### `gist::download`

Download gist files.

### `gist::edit`

Edit a gist.

### `gist::files`

List gist files.

### `gist::fork`

Fork a gist.
List gist forks.

### `gist::forks`

List gist forks.

### `gist::get`

Get a single gist.

### `gist::is_starred`

Check if a gist is starred.

### `gist::owner`

Get the a gist's owner.

### `gist::public`

List all public gists.

### `gist::star`

Star a gist.

### `gist::unstar`

Unstar a gist.

### `gist_comment::create`

Create a comment on a gist.

### `gist_comment::delete`

Delete a comment on a gist.

### `gist_comment::edit`

Edit a comment on a gist.

### `gist_comment::get`

Get a single comment on a gist.

### `gist_comment::text`

Get the text of a single comment on a gist.

### `gist_comment::user`

Get the user of a single comment on a gist.

### `github::conducts`

List all Codes of Conduct.

### `github::gitignores`

List all .gitignore templates available to pass as an option when creating a

### `github::git_servers`

List all IP addresses (in CIDR format) specifying the Git servers for

### `github::hooks`

Get a list of IP addresses in CIDR format specifying the addresses that

### `github::importers`

Get a list of IP addresses in CIDR format specifying the addresses that

### `github::licenses`

List all licenses.

### `github::orgs`

List all organizations.

### `github::pages`

List all IP addresses (in CIDR format) specifying the A records for GitHub

### `github::password_auth`

Tell whether authentication with username and password is supported.

### `github::repos`

List all public repositories.

### `github::sha`

Get the currently-deployed SHA of github-services.

### `github::timeline`

Get the GitHub global public timeline, in Atom format.
Get the GitHub global public timeline URI.

### `github::timeline_url`

Get the GitHub global public timeline URI.

### `github::users`

List all users, in the order that they signed up on GitHub.

### `gitignore::content`

Fetch a .gitignore template by name.

### `help::method_desc`

Get the description of a method in Gitty.

### `help::methods`

List all methods for a given module in Gitty.

### `help::modules`

List all modules in Gitty.

### `json::build_array`

Build a JSON array from argv.

### `license::describe`

Describe an individual license.

### `license::name`

Get the name of an individual license.

### `license::text`

Get the text of an individual license.

### `markdown::from_file`

Render an arbitrary Markdown document from a file.

### `markdown::from_stream`

Render an arbitrary Markdown document from stdin.

### `markdown::from_string`

Render an arbitrary Markdown document from a string (private method).
Render an arbitrary Markdown document from a string.

### `network::events`

List public events for a network of repositories

### `org::block`

Block a user.
List the users blocked by an organization.

### `org::blocked_users`

List the users blocked by an organization.

### `org::company`

Get an organization company.

### `org::describe`

Get an organization description.

### `org::edit`

Edit an organization.

### `org::email`

Get an organization email.

### `org::events`

List public organization events.

### `org::get`

Get an organization.

### `org::is_blocked`

Check whether a user is blocked from an organization.

### `org::location`

Get an organization location.

### `org::name`

Get an organization name.

### `org::projects`

List organization projects.

### `org::repos`

List organization repositories.

### `org::unblock`

Unblock a user.

### `org::url`

Get an organization url.

### `path::content`

Get the content of a file.

### `path::ls`

List contents of a directory or the name of file (similar to the ls command).

### `path::type`

Return the type of a path.

### `project::create`

Create a project.

### `project::creator`

Get a project creator.

### `project::delete`

Delete a project.

### `project::edit`

Edit a project.

### `project::get`

Get a project.

### `project::name`

Get a project name.

### `project::state`

Get a project state.

### `project::text`

Get a project text.

### `rate_limit::limit`

Get the current rate limit status.

### `rate_limit::remaining`

Get the current rate limit status.

### `rate_limit::reset`

Get the current rate limit status.

### `repo::by_id`

Get repository by ID (undocumented).

### `repo::comments`

List commit comments for a repository.

### `repo::commits`

List commits on a repository.

### `repo::conduct`

Get a repository's code of conduct.

### `repo::create`

Create a new repository for the authenticated user.

### `repo::delete`

Delete a repository.

### `repo::events`

List repository events IDs.

### `repo::fork`

Fork a repository.
List forks for a repository.

### `repo::forks`

List forks for a repository.

### `repo::is_starred`

Check if a gist is starred.

### `repo::license`

Get the contents of a repository's license.

### `repo::projects`

List repository projects.

### `repo::readme`

Return the preferred README for a repository.

### `repo::star`

Star a repository.
List Stargazers for a repository.

### `repo::stargazers`

List Stargazers for a repository.

### `repo::tags`

List tags for a repository.

### `repo::topics`

List all topics for a repository.

### `repo::unstar`

Unstar a repository.

### `root::events`

List public events IDs.

### `search::code`

Find file contents via various criteria.

### `search::commits`

Find commits via various criteria.

### `search::issues`

Find issues by state and keyword.

### `search::labels`

Find labels in a repository with names or descriptions that match search

### `search::repositories`

Find repositories via various criteria.

### `search::topics`

Find topics via various criteria.

### `search::users`

Find users via various criteria.

### `user::follow`

Follow a user.
List followers of the specified user.
List who the specified user is following.

### `user::followers`

List followers of the specified user.

### `user::following`

List who the specified user is following.

### `user::gists`

List public gists for the specified user.

### `user::is_following`

Check if the specified user follows another.

### `user::keys`

List the verified public keys for the specified user.

### `user::org_received_events`

List organization events for the authenticated user.

### `user::public_received_events`

List public events for a user.

### `user::received_events`

List events received by the authenticated user.

### `user::repos`

List public repositories for the specified user.

### `user::starred_repos`

List repositories being starred by the specified user.

### `user::timeline`

Get the public timeline for the specified user, in Atom format.
Get the public timeline URI for the specified user.

### `user::timeline_url`

Get the public timeline URI for the specified user.

### `user::unfollow`

Unfollow a user.

