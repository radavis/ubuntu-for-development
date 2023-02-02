## exercism

[exercism.io](https://exercism.io) is a platform for learning to code. Choose
from a variety of languages. Complete programming challenges, view other's
solutions, and get community feedback on your code.

Download and extract the exercism cli

```bash
$ cd ~
$ mkdir -p exercism/cli
$ cd exercism/cli
$ EXERCISM_VERSION=3.1.0
$ curl -OL https://github.com/exercism/cli/releases/download/v$EXERCISM_VERSION/exercism-$EXERCISM_VERSION-linux-x86_64.tar.gz
$ tar -zxvf exercism-$EXERCISM_VERSION-linux-x86_64.tar.gz
```

Add the `exercism` command to your `$PATH`

```bash
# ~/.bashrc

# exercism
PATH="$HOME/exercism/cli:$PATH"
```

Configure the `exercism` command with your authentication token from https://exercism.io/my/settings

```bash
$ exercism configure --token=<your-token> --workspace="$HOME/exercism"
```

Join a language track, then download an exercise

```bash
$ exercism download --exercise=hello-world --track=javascript
```
