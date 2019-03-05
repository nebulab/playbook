---
title: Using Git and GitHub
---
Git is used to manage all the projects we work on. Learning to use Git is very important because, in
addition to preserving the code, it serves as a source of documentation and makes it easier to share
design and implementation decisions with the team.

Before you start contributing to a project, there are a few things you should know:

- we always use [Trunk Based Development](https://guides.github.com/introduction/flow/):
  we use short-lived feature branches for all changes and merge into `master`,
  which serves as the single source of truth for the project's state;
- we use commit messages that allow us to understand the development history (more info on good
  commit messages [here](https://chris.beams.io/posts/git-commit/)).

If you need anything explained, ask your colleagues (in person or on #development in Slack).

If you want to learn more about this, here is a list of interesting links about Git:

- https://mislav.net/2014/02/hidden-documentation/
- http://who-t.blogspot.com/2009/12/on-commit-messages.html
- https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Workflow

The workflow of new features is managed via pull requests on GitHub.

To implement a new feature:

1. create an issue (use the language chosen for the project);
2. create a new branch named `developer-name/123-feature-name`, where `123` is the issue number in
   the project management tool (e.g. `aldesantis/123-login`);
3. add a certain number of commits (in English :gb:);
4. open a pull request for the `master` branch (use the language chosen for the project);
5. have the pull request reviewed accepted by another team member;
6. rebase on master and merge after the pull request is approved and required
status checks are green;
6. test the new feature on staging or the review app before deploying to production.

In general, when you work on external projects:

- Adapt to the style of existing commit messages, issues and pull requests only if they are
  written homogeneously.
- Apply the Nebulab rules (after asking the team, if present) when you note discrepancies in the
  existing commits.
