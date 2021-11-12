# MySQL/MariaDB

```bash
$ apt update
$ apt install mariadb-server libmariadb-dev
$ sudo mysql_secure_installation
```

To install other releases of mariadb: [[source](https://www.linuxbabe.com/mariadb/install-mariadb-ubuntu-18-04-18-10)]

```bash
$ apt install software-properties-common
$ apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
$ add-apt-repository "deb [arch=amd64] http://mirror.lstn.net/mariadb/repo/10.4/ubuntu $VERSION_CODENAME main"
$ apt update
$ apt install mariadb-server
```

Verify your installation

```bash
$ mysql --user=root
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
$ sudo !!
MariaDB [(none)]> show databases;
MariaDB [(none)]> \q
```
