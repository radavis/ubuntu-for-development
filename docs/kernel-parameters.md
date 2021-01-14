# Change Linux Kernel Parameters via Grub

```bash
$ sudo nano /etc/default/grub
```

```
# https://bugs.chromium.org/p/chromium/issues/detail?id=221905
# quiet splash i915.lvds_downclock=1 tpm_tis.force=1 tpm_tis.interrupts=0

# https://wiki.archlinux.org/index.php/Chrome_OS_devices#Fixing_suspend
# modprobe.blacklist=ehci_pci

# https://github.com/rolandguelle/chromebook-pixel-linux#kernel-parameter
# tpm_tis.force=1 tpm_tis.interrupts=0

GRUB_CMDLINE_LINUX_DEFAULT="quiet nmi_watchdog=0 resume=/dev/sda1 elevator=noop i915.enable_fbc=1 i915.semaphores=1 i915.lvds_downclock=1 i91>
```

```bash
$ sudo update-grub
```

[[source](https://github.com/bubbathevtog/2013-pixel-archlinux)]
