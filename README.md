# Pass-Pass

The hottest way to share your passwords.

## Setup

### Requirements

You'll want the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) and [rbenv](https://github.com/rbenv/rbenv) installed.

```sh
$ brew install heroku rbenv ruby-build
```

You'll also need to be running [redis](https://redis.io/) locally so that [Sidekiq](https://sidekiq.org/) can operate.  You can run this easily within Docker.

```sh
$ docker run -it -p 6379:6379 redis
```

### Quickstart

```sh
$ rbenv install
$ gem install bundler
$ bundle install
$ bundle exec rake db:migrate
$ heroku local
```

At this time the server will be available at <http://localhost:5000>.
