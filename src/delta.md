# delta

```bash
$ DELTA_VERSION=0.8.0
$ curl -OL https://github.com/dandavison/delta/releases/download/${DELTA_VERSION}/git-delta_${DELTA_VERSION}_amd64.deb
$ sudo dpkg -i git-delta_${DELTA_VERSION}_amd64.deb
```

Then, edit your `~/.gitconfig` file

```
[pager]
    diff = delta
    log = delta
    reflog = delta
    show = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    features = side-by-side line-numbers decorations
    whitespace-error-style = 22 reverse

[delta "decorations"]
    commit-decoration-style = bold yellow box ul
    file-style = bold yellow ul
    file-decoration-style = none
```
