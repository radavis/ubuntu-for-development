# printenv

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

## API keys

When working with a Web API, it's good practice to keep your API key separate
from your code. By storing these values in your environment, you can define
this API key ouside of your code, and still easily access its value.

First, store the key-value pair in a file.

```bash
# ~/.env_vars
export TMDB_API_KEY=tmdb-api-key-value
```

Then, source the file to load the key-value pair into the working shell
environment.

```bash
$ source ~/.env_vars # or
$ . ~/.env_vars
$ curl https://api.themoviedb.org/3/movie/615643?api_key=$TMDB_API_KEY
```

Pretty-print the output with `jq`

```bash
$ curl https://api.themoviedb.org/3/movie/615643?api_key=$TMDB_API_KEY | jq
```

## Load Environment Variables

Load the variables stored in `~/.env_vars` when starting the terminal,
before reaching the bash prompt.

```bash
# ~/.bashrc

# load user-set environment variables
ENV_VAR_FILE=$HOME/.env_vars
if [[ -f "$ENV_VAR_FILE" ]]; then
  source "$ENV_VAR_FILE"
fi
```

