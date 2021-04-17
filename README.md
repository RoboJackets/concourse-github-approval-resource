# concourse-github-approval-resource
[![GitHub license](https://img.shields.io/github/license/RoboJackets/concourse-github-approval-resource)](https://github.com/RoboJackets/concourse-github-approval-resource/blob/main/LICENSE) [![CI](https://concourse.robojackets.org/api/v1/teams/information-technology/pipelines/github-approval/jobs/build-main/badge)](https://concourse.robojackets.org/teams/information-technology/pipelines/github-approval)

Concourse resource to automatically approve a pull request if it was opened by a bot

## Source configuration

- `pull_request_url` (required) - pull request that is being built
- `commit` (required) - commit that is being built
- `token` (required) - GitHub App token to use to authenticate
- `debug` (optional) - whether to enable debug logging; must be set to boolean true if present

## Behavior
Do not `get` this resource manually, it will not work.

### `check`
Returns an empty list.

### `in`
Does nothing.

### `out`
Approves the pull request if the author is a bot, otherwise does nothing.

`inputs` must be an empty list; this reduces overhead starting the container.
