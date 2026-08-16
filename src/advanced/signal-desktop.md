# signal-desktop

```bash
$ SIGNAL_VERSION=8.23.0
$ git clone --depth 1 --branch v${SIGNAL_VERSION} https://github.com/signalapp/Signal-Desktop
$ cd Signal-Desktop
$ asdf install nodejs # should install .nvmrc version, if not
# node-build 24.17.0 ~/.asdf/installs/nodejs/24.17.0/ && asdf reshim
$ npm install -g pnpm@latest-11
$ pnpm install
$ pnpm run build-linux
$ sudo dpkg -i release/signal-desktop_${SIGNAL_VERSION}_amd64.deb
```
