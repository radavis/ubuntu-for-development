# ansible

```bash
$ sudo apt install pip3
$ pip3 install --user ansible paramiko
# verify
$ which ansible
$ ansible --version
```

```bash
$ ansible-playbook playbook.yml -i hosts --ask-become-pass
```
