## stackedit

Try stackedit release

```bash
$ cd ~/projects
$ stackedit_version=5.14.0
$ curl -L https://github.com/benweet/stackedit/archive/refs/tags/v${stackedit_version}.tar.gz --output stackedit.tar.gz
$ tar -zxvf stackedit.tar.gz && rm stackedit.tar.gz
$ cd stackedit-${stackedit_version}
$ node_version=12.22.10
$ asdf install nodejs ${node_version} && asdf local nodejs ${node_version}
$ npm i
npm ERR! Failed at the node-sass@4.9.3 postinstall script.
```

Try stackedit master branch

```bash
$ cd ~/projects
$ git clone git@github.com:benweet/stackedit.git && cd stackedit
$ node_version=12.22.10 && asdf local nodejs ${node_version}
$ npm i
$ npm start
$ open localhost:8080
```

Stackedit integrates with GitLab: https://docs.gitlab.com/ee/integration/oauth_provider.html
