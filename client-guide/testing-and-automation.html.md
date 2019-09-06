---
title: Testing and automation
meta_description: >
  It can be hard to sell non-technical people on the value of testing... unless you do it by
  speaking their language. Find out how we do it at Nebulab!
---

When working on a Web application, the development team usually runs two types of tests on the code
they write:

- **Automated testing:** these are tests written as code. Because they are run by machines, these
  tests only find the issues they are programmed to find.
- **Exploratory testing:** these are tests run by humans, who actually use the application being
  tested to uncover any issues in design or functionality.

Automated tests are fast and precise - they can be run whenever a change is made to the application
to ensure the functionality is still working as expected. However, they cannot uncover issues that
were not anticipated when the test was written, and they cannot judge the usability of the feature's
design.

Exploratory tests are time-consuming and prone to human error, so they need to be used with
judgment. On the other hand, they are an invaluable tool for validating a feature's UX and UI and
for exploring edge scenarios that were not coded by the developers.

## The value of automated testing

Many companies, especially at a younger stage, are skeptical of test automation: after all, having
developers write tests often means spending 30-40% more time on each feature. This can seem like an
outrageous amount of time (and money) going into an invisible artifact.

However, the idea that an automated test suite does not generate value is simply wrong. There are
many ways in which automation helps you, but they all boil down to velocity and robustness:

- **Velocity:** while writing tests for a new feature might cost 30-40% more in the short term than
  not writing them, in the long run the tests will also allow developers to iterate and change the
  feature more quickly and without spending their time on manual testing. Even when accounting for
  the time it takes to update the test suite, the savings are still huge. This allows you to deliver
  more features more quickly.
- **Robustness:** every minute of downtime and every crash directly affect your bottom line. The
  extent of this impact is especially true for online stores, where a dissatisfied customer may
  simply choose to go with a competitor if they can't buy from your website. A comprehensive test
  suite dramatically reduces the chances of failure and allows you to focus on the next big thing
  rather than on putting out fires.

## Making humans and machines work together

In successful software projects, both automated and exploratory testing are used in a complementary
way. Creating synergy between humans and machines, making the most of their unique capabilities, is
key to delivering quality software.

The process we follow adopts both automated and exploratory testing:

- When a new feature is implemented or a change is made, we write automated tests that cover all the
  use cases. These tests are then usually run as part of the project's CI (Continuous Integration)
  pipeline, which means broken code can never make it into your application.
- For new features and large user-facing changes, we run exploratory testing. We'll also ask someone
  on your end to help us whenever possible. This allows us to uncover edge scenarios and design
  issues. Any issues that can be fixed and tested by a machine then make it back into the suite of
  automated tests, so that we don't have to worry about it in the future.

The reason we want you to be part of the exploratory testing phase is that we always see a lot of
value emerge from these sessions: it's when we really get to understand a client's design and work
philosophy. The results of your exploratory testing connect us to how you want things to be done,
and keep the entire team aligned with your values. 
