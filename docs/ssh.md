# ssh

Generate a ssh key

```bash
# use 'ed25519' or 'rsa' for encryption algorithm type
$ ssh-keygen -t ed25519 -C "Full Name <email>"
```

## Push and Pull code from GitHub and GitLab via SSH

* [Adding a new SSH key to your GitHub account](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
* [Adding an SSH key to your GitLab account](https://docs.gitlab.com/ee/ssh/#adding-an-ssh-key-to-your-gitlab-account)

```bash
$ git clone git@github.com:username/repository.git
```
