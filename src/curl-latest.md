# curl latest

```bash
$ export CURL_VERSION=7.81.0
$ wget https://curl.se/download/curl-$CURL_VERSION.tar.xz
$ tar -xvf curl-$CURL_VERSION.tar.xz
$ cd curl-$CURL_VERSION
$ ./configure --disable-static --with-openssl --enable-threaded-resolver --with-ca-path=/etc/ssl/certs
$ make
$ sudo make install
```
