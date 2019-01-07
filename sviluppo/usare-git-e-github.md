# Use Git and GitHub

Git is used to manage all the projects we work on. Learning to use
Git is very important because, in addition to preserving the code, it means it can be documented
and allows for the implementation choices to be shared with the rest of the team, even after some
time.

Before you start contributing, there are a few things you must know:

- we always use [GitHub Flow](https://guides.github.com/introduction/flow/):
for all projects we use the branch features to make modifications and only one
`master` branch to preserve the code;
- We use commit messages that allow us to reconstruct the development history 
and which comply with the rules that you can find [here](https://chris.beams.io/posts/git-commit/).

Apart from these points, there are no other rules. If you need anything explained,
ask your colleagues (in person or on #development on Slack).

If you want to learn more about this, here is a list of
interesting links on Git:

- https://mislav.net/2014/02/hidden-documentation/
- http://who-t.blogspot.com/2009/12/on-commit-messages.html
- https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Workflow

The functionalities to implement are managed via a pull request on GitHub.

To implement a new functionality, you must:

1. Create an issue if necessary (use the language chosen for the project)
2. Create a new branch `handle-developer/123-name-functionality`, where `123` is the issue number
   in the project management tool (e.g. `aldesantis/123-login`);
3. Add a certain number of commits (in English :gb:);
4. Make the pull request to the branch master (use the language chosen for the project)
5. Have the pull request accepted by another person performing the review;
6. Test the new functionality on staging before deploying it to production.

In general, when you work on external projects:

- Adapt to pre-existing commit messages, issues and pull requests only if they are expressed  
  homogeneously. 
- Apply the [Nebulab rules](https://github.com/nebulab/playbook/blob/master/sviluppo/usare-git.md#messaggi-di-commit) 
  (after asking the team, if present) when you note any incoherence in the message form.
