# subversion

[[source](https://computingforgeeks.com/how-to-install-svn-server-on-ubuntu-debian/)]

```bash
$ sudo apt install apache2
$ sudo apt install subversion libsvn-dev libapache2-mod-svn subversion-tools
$ sudo a2enmod dav dav_svn
$ sudo systemctl restart apache2
```

Add the following configuration

```
# /etc/apache2/mods-enabled/dav_svn.conf
Alias /svn /var/lib/svn
<Location /svn>

   DAV svn
   SVNParentPath /var/lib/svn

   AuthType Basic
   AuthName "Subversion Repository"
   AuthUserFile /etc/apache2/dav_svn.passwd
   Require valid-user
</Location>
```

Check the configuration and restart apache

```bash
$ sudo apachectl -t
$ sudo systemctl restart apache2
```

Create htpasswd users: `admin` and `$USER` 

```bash
$ sudo htpasswd -cm /etc/apache2/dav_svn.passwd admin
$ sudo htpasswd -m /etc/apache2/dav_svn.passwd $USER
```

Create a place for the subversion repository to exist within the filesystem

```bash
$ sudo mkdir -p /var/lib/svn/
```

Create an individual repository

```bash
$ cd ~/
$ svnadmin create new-example-repository
$ cd new-example-repository
```


```bash
$ sudo svnadmin create /var/lib/svn/example-repo
$ tree /var/lib/svn/example-repo
```

Set proper filesystem permissions

```bash
$ sudo chown -R www-data:www-data /var/lib/svn
$ sudo chmod -R 775 /var/lib/svn
```

View the repository 

```bash
$ browse http://127.0.0.1:80/svn/example-repo/
```

Create a working copy

```bash
# svn checkout http://127.0.0.1:80/svn/example-repo/ # => uri_skip_ancestor: Assertion `svn_uri_is_canonical(child_uri, NULL)' failed.
$ git svn clone http://127.0.0.1:80/svn/example-repo/
```

Add the recommended folder structure from svnbook.red-bean.com

```bash
$ cd example-repo
$ mkdir -p {branches,tags,trunk}
$ touch {branches,tags}/.keep
$ echo "# example-repo" > trunk/README.md
```

NOTES: stuck, can't push code to server

