# Stylistic guide

We follow these guidelines to write clean code and reliable applications: 

- Ruby: 
  - https://github.com/bbatsov/ruby-style-guide
  - https://github.com/uohzxela/clean-code-ruby
- Rails: https://github.com/bbatsov/rails-style-guide
- CSS: https://pages.18f.gov/frontend/css-coding-styleguide/architecture/
- RSpec: http://betterspecs.org/
- Javascript: https://github.com/airbnb/javascript

**Note:** When reading this section, always keep in mind that, when working on projects, it is important 
to adapt to the client's style, if s/he has a development team. Otherwise, it is acceptable 
to bring the project _gradually_ towards our standards ([Opportunistic Refactoring](https://martinfowler.com/bliki/OpportunisticRefactoring.html)).

## Rubocop

The use of Rubocop is important in ensuring the code style is as uniform as possible with 
our applications. This encourages order and cleanliness inside the files, makes it easier 
to read the code and facilitates the rotating of developers between projects and features.

Instead of re-inventing the wheel, we decided to follow a style guide adopted at 
universal level, that is [Relaxed.Ruby.Style](http://relaxed.ruby.style/)

Using a universally accepted style guide also reduced the lock-in effect towards our  
clients, who will be free to change development partner without finding
the code written in an overtly opinionated fashion.

In order to start using this style guide, just read these lines from your `rubocop.yml`:

```yaml
inherit_from:
  - https://relaxed.ruby.style/rubocop.yml
```

## Frontend

### Styles and BEM

For the front-end development, start from these resources:

- [BEM Quick Start](https://en.bem.info/methodology/quick-start/)
- [BEM for Beginners: Why you Need BEM](https://www.smashingmagazine.com/2018/06/bem-for-beginners/)

And integrate them with these comments, which are the result of experience acquired over various projects:

- *Universal selector*: sometimes it is acceptable, but should not be used in excess. A good example is the use of
  the universal selector to set the `box-model` of the elements.
- *Nomenclature*: we use the [Two Dashes style](https://en.bem.info/methodology/naming-convention/#two-dashes-style).
- *Mix*: Avoid them, as they needlessly complicate the structure while modifiers can be used to obtain the same functionalities.
- *File structure*: We use one file per block, without separating elements and modifiers. We do not put the underscore before the names of files to import.
- *Variables*: we only use one file for all the variables, instead of separating them into different files.
- *@extend*: we avoid this, principally because it does not make much sense in a BEM structure. 
