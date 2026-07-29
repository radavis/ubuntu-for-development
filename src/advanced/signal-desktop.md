# signal-desktop

```bash
$ SIGNAL_VERSION=8.20.0
$ git clone --depth 1 --branch v${SIGNAL_VERSION} https://github.com/signalapp/Signal-Desktop.git
$ cd Signal-Desktop
$ asdf install npm
$ npm install -g pnpm@latest-11
$ pnpm install
$ pnpm run build-linux
$ sudo dpkg -i release/signal-desktop_${SIGNAL_VERSION}_amd64.deb
```
