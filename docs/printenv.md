# printenv

The `printenv` command shows us the variables (key, value pairs) stored in our
working shell environment.

```bash
$ tldr printenv
$ printenv | grep ^USER
$ printenv | grep ^SHELL
$ echo "$SHELL"
```

## API keys

When working with a Web API, it's good practice to keep your API key separate
from your code. By storing these values in your environment, you can keep
this API key secret and safe.

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
$ curl https://api.themoviedb.org/3/movie/550?api_key=$TMDB_API_KEY
```

Pretty-print the output with `jq`

```bash
$ curl https://api.themoviedb.org/3/movie/550?api_key=$TMDB_API_KEY | jq
```

## Load Environment Variables

`source ~/.env_vars` from `~/.bashrc`

```bash
# ~/.bashrc

# load user-set environment variables
ENV_VAR_FILE=$HOME/.env_vars
if [[ -f "$ENV_VAR_FILE" ]]; then
  source "$ENV_VAR_FILE"
fi
```

