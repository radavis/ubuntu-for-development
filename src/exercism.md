## exercism

[exercism.io](https://exercism.io) is a platform for learning to code. Choose
from a variety of languages. Complete programming challenges, view other's
solutions, and get community feedback on your code.

Download and extract the exercism cli

```bash
$ cd ~
$ mkdir -p exercism/cli
$ cd exercism/cli
$ curl -OL https://github.com/exercism/cli/releases/download/v3.0.13/exercism-linux-64bit.tgz
$ tar -zxvf exercism-linux-64bit.tgz
```

Add the `exercism` command to your `$PATH`

```bash
# ~/.bashrc

# exercism
PATH="$HOME/exercism/cli:$PATH"
source "$HOME/exercism/cli/shell/exercism_completion.bash"
```

Configure the `exercism` command with your authentication token from https://exercism.io/my/settings

```bash
$ exercism configure --token=<your-token> --workspace="$HOME/exercism"
```

Join a language track, then download an exercise

```bash
$ exercism download --exercise=hello-world --track=javascript
```
