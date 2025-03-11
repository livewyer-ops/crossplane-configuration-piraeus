<!-- markdownlint-disable MD033 MD041 -->

![LiveWyer Banner](./.github/img/github-banner.png?raw=true)

<p align="center">
    <a href="https://livewyer.io" ><img src="https://badgen.net/badge/Website/livewyer.io" alt="LiveWyer Website badge" /></a>
    <a href="https://twitter.com/LiveWyerUK"><img src="https://badgen.net/badge/twitter/@LiveWyerUK" alt="Twitter badge" /></a>
    <a href="https://www.linkedin.com/company/livewyer"><img src="https://badgen.net/badge/LinkedIn/LiveWyer" alt="LinkedIn badge" /></a>
</p>

<h1 align="center">%%PROJECT_NAME%%</h1>

## Overview

- Briefly explain what the repo is, what the point/purpose of the repo is and key features

## Documentation

- Link to where any relevant docs are stored

## Publishing

Here is a checklist of actions to complete before making a repository public. Make sure you follow the instructions below and that you double check with the latest checklist stored [here](https://github.com/livewyer-ops/internal-docs/blob/master/processes/making-a-repo-public).

### Required

- Create comprehensive README, with [LW banner](/processes/making-a-repo-public/github-banner.png)
- Update `\\repo_name\\` with your repo name in [PR](/.github/pull_request_template.md) Template and `Contributing` section of this README
- Set the repo description and tags
- Add [LICENCE](./LICENSE)
- Add [Code of Conduct](./CODE_OF_CONDUCT.md)
- Remove all sensitive data ([gitleaks](https://github.com/gitleaks/gitleaks) to find it, [git-filter-repo](https://github.com/newren/git-filter-repo) to remove it from the history, GitHub guide, PR deletion)
- Remove inactive branches so remaining branches are clear and tidy
- Create a GitHub [ruleset](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets) to protect the main branch:
  - Restrict deletions
  - Require linear history
  - Require signed commits
  - Require a pull request before merge
    - Require approvals
    - Dismiss stale pull request approvals when new commits are pushed
    - Require review from Code Owners
    - Require conversation resolution before merging
  - Require status checks to pass before merge
  - Block force pushes
- Decide who will maintain the public repo

### Optional

- Add Contributing guide (can be added to the README, see example repo)
- Add [Git Issue](/.github/ISSUE_TEMPLATE/bug-report.yaml)/[PR](/.github/pull_request_template.md) Templates
- [Squash commits](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/configuring-commit-squashing-for-pull-requests) by default
- Add OWNERS/[CODEOWNERS](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners) file
- Set [PR limits](https://docs.github.com/en/enterprise-cloud@latest/repositories/managing-your-repositorys-settings-and-features/managing-repository-settings/managing-pull-request-reviews-in-your-repository) to avoid spamming

Contents:

- [ ] Update this `README.md` file
- [ ] Update `\\repo_name\\` with your repo name in [PR](/.github/pull_request_template.md) Template and `Contributing` section of this README
- [ ] Set the repository description and topics
- [ ] Remove all sensitive data (`gitleaks` to find it, `git-filter-repo` to remove it from the history, GitHub guide, PR deletion)
- [ ] Remove inactive branches so remaining branches are clear and tidy, ideally only the default branch should remain
- [ ] Create a GitHub [ruleset](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets) to protect the main branch
- [ ] Decide who will maintain the public repo
- [ ] Optional
- [ ] Squash commits by default
- [ ] Add OWNERS/CODEOWNERS file
- [ ] Set PR limits to avoid spamming

## Contributing

We value your feedback and suggestions!
If you have any ideas or want to report issues, please create an [issue](https://github.com/livewyer-ops/\\repo_name\\/issues/new/choose).
Additionally, you can submit your contributions by opening a [pull request](https://github.com/livewyer-ops/\\repo_name\\/pulls).

---

Copyright © 2024 LiveWyer, Licensed under the `MIT` License; you may not use this file except in compliance with the [License](LICENSE).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and limitations under the [License](LICENSE).
