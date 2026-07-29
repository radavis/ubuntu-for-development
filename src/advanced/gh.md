## gh

The `gh` command allows you to interact with GitHub from the command-line.

### Install via dpkg

Download `gh_$VERSION_linux_amd64.deb`, [here](https://github.com/cli/cli/releases).

```bash
$ cd ~/Downloads
$ sudo dpkg -i gh_$VERSION_linux_amd64.deb
```

### Create a GitHub Personal Access Token

Visit https://github.com/settings/tokens, click "Generate new token".

Check `repo`, `gist`. Click "Generate token".

Store the generated token as an environment variable `GH_TOKEN=xyz` within
`~/.env`.

### Verify

```bash
$ gh --version
$ tldr gh
```
