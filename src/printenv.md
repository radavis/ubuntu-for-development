## printenv

The `printenv` command shows us the variables, and their values, that are
stored in our working shell environment.

```bash
$ tldr printenv
$ printenv | grep ^USER
$ printenv | grep ^SHELL
```

Get the value of a variable

```bash
$ echo "$SHELL"
$ echo "$EDITOR"
```

### API keys

When working with a Web API, it's good practice to keep your API key separate
from your code. By storing these values in your environment, you can define
this API key ouside of your code, and still easily access its value.

First, store the key-value pair in a file.

```bash
# ~/.env
export TMDB_API_KEY=tmdb-api-key-value
```

Then, source the file to load the key-value pair into the working shell
environment.

```bash
$ source ~/.env # or
$ . ~/.env
$ curl https://api.themoviedb.org/3/movie/615643?api_key=$TMDB_API_KEY
```

Pretty-print the output with `jq`

```bash
$ curl https://api.themoviedb.org/3/movie/615643?api_key=$TMDB_API_KEY | jq
```

### Load Environment Variables

Load the variables stored in `~/.env` when starting the terminal,
before reaching the bash prompt.

```bash
# ~/.bashrc

# load user-set environment variables
ENV_VARIABLES="$HOME/.env"
if [[ -f "$ENV_VARIABLES" ]]; then
  source "$ENV_VARIABLES"
fi
```
