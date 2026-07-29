## MySQL/MariaDB

```bash
$ sudo apt install mariadb-server libmariadb-dev
$ sudo mysql_secure_installation
```

Verify your installation

```bash
$ mysql --user=root
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
$ sudo !!
MariaDB [(none)]> show databases;
MariaDB [(none)]> \q
```

Make your user a superuser within MySQL/MariaDB

```bash
$ echo $USER  # make a note of your username
$ mysql -uroot
MariaDB [(none)]> CREATE USER 'your-username'@'localhost' IDENTIFIED BY 'your-password';
MariaDB [(none)]> GRANT ALL PRIVILEGES ON *.* TO 'your-username'@'localhost' WITH GRANT OPTION;
MariaDB [(none)]> FLUSH PRIVILEGES;
MariaDB [(none)]> \q
```

[[source](https://tableplus.com/blog/2018/10/how-to-create-a-superuser-in-mysql.html)]
