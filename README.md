# Tunr Rails Routes & Resources

Rails application demonstrating the use of nested resources, and Rails helpers.

## Getting Started

First, clone down this repo and from the app's root directory make sure to run the necessary setup:

```bash
$ git clone git@github.com:ga-wdi-exercises/tunr_rails_routes_resources.git
$ cd tunr_rails_routes_resources
$ bundle install
$ rails db:drop db:create db:migrate db:seed
$ rails s
```

> **Error during bundle install**: If you get an error pertaining to a certain version of a Gem not being installed (`json 1.8.3` for instance), try running `bundle update`.

If your server started successfully, you should now be able to navigate in your browser to `http://localhost:3000` to view the app.
