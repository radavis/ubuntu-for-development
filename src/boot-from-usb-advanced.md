## Create Bootable USB from the Command Line

How to use the CLI to create a bootable USB drive

Plug in a fresh and appropriately sized USB drive. Then, run `sudo fdisk -l` to
determine the device name.

Replace `/dev/sdX` with the name of the device.

**Double** and **triple check** that you have the correct device name. The
**`dd` command is destructive** and will overwrite all data on the
specified device.

```bash
$ sudo fdisk -l
$ sudo dd \
    bs=4M \
    if=~/path/to/.iso \
    of=/dev/sdX \
    conv=fdatasync \
    status=progress
```
