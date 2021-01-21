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

* [Gitignore](https://docs.github.com/en/rest/reference/gitignore)

* Issues
    - Assignees
    - Comments
    - Events
    - Labels
    - Milestones
    - Timeline

* [Licenses](https://docs.github.com/en/rest/reference/licenses)
* [Meta](https://docs.github.com/en/rest/reference/meta)

* Migration
    - Migrations
    - Source Imports
* [Miscellaneous](https://developer.github.com/v3/misc/)
    - [Codes of Conduct](https://developer.github.com/v3/codes_of_conduct/)
    - [Markdown](https://developer.github.com/v3/markdown/)
    - [Meta](https://developer.github.com/v3/meta/)
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

* [Rate Limit](https://docs.github.com/en/rest/reference/rate-limit)

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


