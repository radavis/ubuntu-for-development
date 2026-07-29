## apt

### When things go wrong

`apt install` and `dpkg -i can go wrong. e.g. -- `Errors were encountered while processing ...`.

It's possible that there are only some missing packages at fault. When that's the case, try `sudo apt --fix-broken install`.

```bash
$ curl -OL https://github.com/phoronix-test-suite/phoronix-test-suite/releases/download/v10.8.4/phoronix-test-suite_10.8.4_all.deb
$ sudo dpkg -i phoronix-test-suite_10.8.4_all.deb
# Errors were encountered while processing:
#  phoronix-test-suite
$ sudo apt --fix-broken install
$ phoronix-test-suite system-info
$ echo "alias pts=\"phoronix-test-suite\"" >> ~/.alias && source ~/.alias
$ pts benchmark smallpt
```
