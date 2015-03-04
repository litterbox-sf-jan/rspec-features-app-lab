# RSpec Features App Lab

The goal for this lab is to build an application thinking about what the user will do in the application, and buildinga series of features specifications (specs) to specify the user’s actions. 

You should primarily think about the “[happy paths](http://en.wikipedia.org/wiki/Happy_path)” the user may take in your application. 

Your goal should not be to specify the [edge cases](http://en.wikipedia.org/wiki/Edge_case) or [corner cases](http://en.wikipedia.org/wiki/Corner_case).

## App description and discussion

Let’s assume that you want to build an app, which gives the user the ability to find out whether they need an umbrella for the zipcode they are in, and not prompt the user for their zip code in the future, remembering their zip code in a cookie. If the user decides to change locations, then they are prompted for a new location.

### Draw up some wireframes for what this app may look like

### Figure out the low hanging fruit features we can build quickly, that would still give the user some minimum useful functionality (mvp)

### Talk about a specification for those fatures (how will the user interact with the application)

## Specification components

### Setup
* What are the prerequisites of the test?
* Does stuff need to exist in the database?
* Does a user need to be logged in?

### Exercise
* Fill in forms
* Click buttons, links, etc
* Submit forms

### Verify
* Does the next page have what the user will expect it to have?

### Teardown
* Mostly RSpec will take care of it for you

## RSpec setup when initializing your rails app

### At command line:

```
rails new -TBd postgresql
```

The `-T` up there tells rails to generate the app without a test framework.

### In Gemfile:

```
gem ‘rspec-rails’
```

That will add `rspec` as your test framework for your rails app.

### At command line:

```
bundle install
rails g rspec:install
```