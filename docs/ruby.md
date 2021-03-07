# ruby

install `rbenv` to manage ruby versions

```bash
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
$ cd ~/.rbenv
$ ./src/configure
$ make -C src
```

```bash
~/.bashrc

# rbenv - manages ruby versions
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

install the `ruby-build` plugin

```bash
$ mkdir -p "$(rbenv root)"/plugins
$ git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

add the `rbenv-doctor` script

```bash
$ curl -L https://raw.githubusercontent.com/rbenv/rbenv-installer/master/bin/rbenv-doctor \
    -o ~/.rbenv/bin/rbenv-doctor
$ chmod +x ~/.rbenv/bin/rbenv-doctor
```

install one or more ruby versions

```bash
$ source ~/.bashrc # or reload your terminal
$ rbenv install 2.7.2
$ rbenv install 3.0.0
$ rbenv local 2.7.2
$ gem install bundler # see bundler.io/gemfile.html
```

create a new ruby (on rails) project

```bash
$ mkdir new-ruby-project && cd $_
$ echo "2.7.2" > .ruby-version
$ bundle init # gives you a Gemfile
```

```ruby
# Gemfile
source "https://rubygems.org"
gem "rails", "~> 6.1.0"
```

```bash
$ bundle install
$ rails new --help
$ rails new . \
    --database=postgresql
$ rake db:create
$ rake db:migrate
$ rails server
```
