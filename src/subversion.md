## subversion

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

Create an admin user, and other users

```bash
$ sudo htpasswd -cm /etc/apache2/dav_svn.passwd admin
$ sudo htpasswd -m /etc/apache2/dav_svn.passwd rad
```

Create a place for the subversion repository to exist within the filesystem

```bash
$ sudo mkdir -p /var/lib/svn/
```

Create an individual repository

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
$ browse http://localhost/svn/example-repo/
```
