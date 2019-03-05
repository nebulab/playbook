---
title: Style guide
---
We follow these guidelines to write clean code and reliable applications: 

- Ruby: 
  - https://github.com/bbatsov/ruby-style-guide
  - https://github.com/uohzxela/clean-code-ruby
- Rails: https://github.com/bbatsov/rails-style-guide
- CSS: https://frontend.18f.gov/css/architecture/
- RSpec: http://betterspecs.org/
- Javascript: https://github.com/airbnb/javascript

**Note:** When reading this section, always keep in mind that, when working on projects, it is 
important to adapt to the client's style if they have a development team. Otherwise, it is acceptable 
to _gradually_ bring the project towards our standards ([Opportunistic Refactoring](https://martinfowler.com/bliki/OpportunisticRefactoring.html)).

## Rubocop

The use of Rubocop is important to ensure code style is as uniform as possible in our projects. This 
encourages order and cleanliness inside the files, makes it easier to read the code and facilitates 
the rotation of developers on projects and features.

Instead of re-inventing the wheel, we decided to follow a common style guide such as 
[Relaxed.Ruby.Style](http://relaxed.ruby.style/)

Using a universally accepted style guide also reduces the lock-in effect towards our clients, who 
will be free to change development partner without having to deal with an overly opinionated 
codebase.

In order to start using this style guide, just add these lines to your `rubocop.yml`:

```yaml
inherit_from:
  - https://relaxed.ruby.style/rubocop.yml
```

## Frontend

### Styles and BEM

For front-end development, start from here:

- [BEM Quick Start](https://en.bem.info/methodology/quick-start/)
- [BEM for Beginners: Why you Need BEM](https://www.smashingmagazine.com/2018/06/bem-for-beginners/)

We also have our own rules, which are the result of experience acquired over various projects: 

- *Universal selector*: sometimes it is acceptable, but it should not be used in excess. A good
  example is using it to set the `box-model` of elements.
- *Naming*: we use the [Two Dashes style](https://en.bem.info/methodology/naming-convention/#two-dashes-style).
- *Mixes*: Avoid them, as they needlessly complicate the selector structure. Modifiers can be used 
  to obtain the same functionality.
- *File structure*: We use one file per block, without separating elements and modifiers into their
  own file. We do not use an underscore before the names of files to import.
- *Variables*: we only use one file for all variables, instead of separating them into different 
  files.
- *@extend*: we avoid it, mainly because it does not make much sense in a BEM structure. 
