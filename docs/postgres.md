# postgres

install postgres, make yourself a superuser, and create your root database.

```bash
$ sudo apt update
$ sudo apt install postgresql postgresql-contrib libpq-dev
$ whoami  # take note of your username
$ sudo -u postgres createuser --interactive
Enter name of role to add: <your-username>
Shall the new role be a superuser? (y/n) y
$ createdb
$ psql
<your-username>=# \q
```

[DigitalOcean: Install Postgres on Ubuntu 20.04](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart)
[postgres docs: Creating a Database](https://www.postgresql.org/docs/9.0/tutorial-createdb.html)

