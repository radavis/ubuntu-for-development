## htop

```bash
$ apt install autoconf libvirt-dev
$ HTOP_VERSION=3.1.0
$ curl --locaton https://github.com/htop-dev/htop/archive/refs/tags/$HTOP_VERSION.tar.gz --output htop-$HTOP_VERSION.tar.gz
$ tar -zxvf htop-$HTOP_VERSION.tar.gz
$ cd htop-$HTOP_VERSION
$ ./autogen.sh
$ ./configure
$ make
$ sudo make install
```
