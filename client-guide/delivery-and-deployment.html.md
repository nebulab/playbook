---
title: Delivery and deployment
meta_description: >
  With the right mindset and setup, the delivery and deployment of your product can be a hassle-free
  experience. See what our workflow looks like!
---

Because we put a lot of stress on [automated testing](/client-guide/testing-and-automation/), we
are able to set up a semi-automated delivery and deployment pipeline for our clients that minimizes
human intervention while still allowing for thorough manual inspection of any changes when needed.
This is achieved thanks to the use of a dead-simple Git workflow and an opinionated CI setup.

Note that we have a strong preference for [CircleCI](https://www.circleci.com), due to its
popularity and flexibility, but this same workflows can be implemented with most CI tools.

## Streamlined Git workflow

We adopt [trunk-based development](https://trunkbaseddevelopment.com/) on all of our projects.

By only having one `master` branch as the single source of truth for the status of the codebase, we
eliminate all complexity tied to using environment-based branches (`dev`/`staging`/`production` and
so on), such as the need to manually merge one branch into the other, which makes it harder to
automate deployments and rollbacks, pollutes Git history and increases the chance of making mistakes
during the merge process.

Streamlining the Git branching model allows the team to work faster and with more confidence and
makes it easier for stakeholders to more easily inspect the status of the codebase.

## Continuous Delivery via preview environments

Since [automation is not a replacement for manual testing](/client-guide/testing-and-automation/#making-humans-and-machines-work-together),
we devised a system that would allow the development team to easily test new features without having
to push untested work to the `master` branch.

When a new branch is created, the CI pipeline automatically provisions a Docker-based preview
environment. This environment is completely isolated from staging and production: it has its own
database, Redis instance and any other tools the application needs to run.

These environments have an easily accessible URL, so that testers can preview and test the feature
before it even gets into staging.

With this workflow, the development team is confident that, at any given point in time, staging is
always production-ready. This is commonly known in the industry as 
[Continuous Delivery](https://en.wikipedia.org/wiki/Continuous_delivery).

[Learn more about preview environments on our blog!](https://nebulab.it/blog/preview-your-prs-with-docker/)

## Everyone on Deployment

Thanks to our Continuous Delivery workflow, everyone on the team can promote staging to production
at any time. In fact, the development team is encouraged to do so as often as possible.

This practice, which we call Everyone on Deployment (in honor of Basecamp's 
[Everyone on support](https://signalvnoise.com/posts/3676-everyone-on-support)), achieves two goals:

* It reduces the product's overall time-to-market, because features get in the hands of users as
  soon as they are ready, rather than having to wait for the next testing and release cycle.
* It reduces the likelihood of issues, because we are deploying in small, incremental chunks, rather
  than having huge releases with tons of modifications.

Deployments are also the perfect scenario where [timezones](/client-guide/work-schedule/) can be
used to our advantage: because we work when your customers sleep, we usually deploy first thing in
the morning, so that any features are shipped with low website traffic. This allows us to quickly
and safely correct any issues with the release.
