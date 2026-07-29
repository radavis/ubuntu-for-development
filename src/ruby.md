## ruby

Install `ruby` via asdf.

```bash
$ sudo apt install libssl-dev zlib1g-dev libyaml-dev # ruby v3
$ asdf plugin add ruby
$ asdf install ruby latest
$ asdf install ruby 3.4.10
```

Create a new ruby (on rails) project.

```bash
$ mkdir new-rails-project && cd $_
# set language versions
$ asdf local ruby latest
$ asdf local nodejs latest # if necessary
# see bundler.io/gemfile.html
$ gem install bundler
$ bundle init # gives you a Gemfile
```

```ruby
# Gemfile
source "https://rubygems.org"
gem "rails", "~> 8.1.3"
```

```bash
$ bundle install
$ bundle exec rails new --help
$ bundle exec rails new . --database=postgresql # and overwrite the Gemfile
$ bin/rails db:create
$ bin/rails db:migrate
$ bin/rails server
```

Open [https://localhost:3000/](http://localhost:3000) in a browser.

See the [Rails Guides](https://guides.rubyonrails.org/) for taking this example
further.
