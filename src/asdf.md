## asdf

An extensible Version Manager.

### Install via GitHub-hosted binary

[[source](https://asdf-vm.com/guide/getting-started.html)]

```bash
$ ASDF_VERSION=0.18.0
$ curl -OL https://github.com/asdf-vm/asdf/releases/download/v${ASDF_VERSION}/asdf-v${ASDF_VERSION}-linux-amd64.tar.gz
$ curl -OL https://github.com/asdf-vm/asdf/releases/download/v${ASDF_VERSION}/asdf-v${ASDF_VERSION}-linux-amd64.tar.gz.md5
# the output of md5sum and the contents of the md5 file should match.
$ md5sum asdf-v${ASDF_VERSION}-linux-amd64.tar.gz.md5
$ tar xf asdf-v${ASDF_VERSION}-linux-amd64.tar.gz
$ mv asdf ~/.local/bin
```

Then, set configuration in `~/.basrc`.

```bash
# ~/.bashrc
$ export PATH="$HOME/.local/bin:$PATH"
$ export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
$ . <(asdf completion bash)

### Add plugins for languages, tools, and install

```bash
$ asdf plugin add nodejs
$ asdf install nodejs latest
$ asdf global nodejs latest
$ node --version
```

Read how to
[set the current version](https://asdf-vm.com/manage/configuration.html)
of a language with `asdf`.

```bash

# fall-back to .nvmrc, .ruby-version, et al. when .tool-versions is not present
echo 'legacy_version_file = yes' > ~/.asdfrc
```
