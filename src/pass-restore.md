## pass-restore

```bash
$ cp -r /media/$USER/$FLASH_DRIVE/gpg ~/
$ gpg --import /home/$USER/gpg/private.key
$ gpg --list-keys
$ gpg --edit-key "key name"
> trust # set to "5"
> quit
$ git clone git@github.com:$GITHUB_USERNAME/password-store.git ~/.password-store
```
