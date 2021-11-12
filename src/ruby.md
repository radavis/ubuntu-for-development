# ruby

Install `ruby` via asdf.

```bash
$ sudo apt install libssl-dev zlib1g-dev # ruby v3
$ sudo apt install libreadline-dev # ruby v2.5
$ asdf plugin add ruby
$ asdf install ruby latest
```

Create a new ruby (on rails) project.

```bash
$ mkdir new-rails-project && cd $_
# define language and tool versions
$ asdf local ruby latest
$ asdf local nodejs latest
$ npm i -g yarn
# see bundler.io/gemfile.html
$ gem install bundler
$ bundle init # gives you a Gemfile
```

```ruby
# Gemfile
source "https://rubygems.org"
gem "rails", "~> 6.1.0"
```

```bash
$ bundle install
$ bundle exec rails new --help
$ bundle exec rails new . --database=postgresql # and overwrite the Gemfile
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rails webpacker:install
$ bundle exec rails server
```

Open [https://localhost:3000/](http://localhost:3000) in a browser.

See the [Rails Guides](https://guides.rubyonrails.org/) for taking this example
further.

