# Create a Bootable USB

Follow one of the official tutorials for
[creating a bootable usb](https://ubuntu.com/tutorials?q=bootable+usb).

## Create Bootable USB from ISO from the Linux CLI

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

## Install Ubuntu

Once you have created the bootable USB drive, restart your computer and boot
from the USB drive.
