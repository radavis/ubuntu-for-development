## hub

The `hub` command allows you to interact with GitHub from the command-line.

```bash
$ cd ~
$ HUB_VERSION=2.14.2
$ curl -OL https://github.com/github/hub/releases/download/v$HUB_VERSION/hub-linux-amd64-$HUB_VERSION.tgz
$ tar -zxvf hub-linux-amd64-$HUB_VERSION.tgz
$ rm hub-linux-amd64-$HUB_VERSION.tgz
```

Then, add the following to `~/.bashrc`

```bash
HUB_VERSION=2.14.2
PATH="$HOME/hub-linux-amd64-$HUB_VERSION/bin:$PATH"
```

### Create a GitHub Personal Access Token

Visit https://github.com/settings/tokens, click "Generate new token".

Check `repo`, `gist`. Click "Generate token".

Store the generated token as an environment variable `GITHUB_TOKEN=xyz` within
`~/.env`.

### Verify

```bash
$ hub --version
$ tldr hub
$ hub browse webgems/webgems
```
