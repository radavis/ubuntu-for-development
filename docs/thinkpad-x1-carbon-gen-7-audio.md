# ThinkPad X1 Carbon gen 7 Audio

```bash
$ lspci
00:1f.3 Audio device: Intel Corporation Cannon Point-LP High Definition Audio Controller (rev 11)

$ sudo lspci -v -s 00:1f.3
00:1f.3 Audio device: Intel Corporation Cannon Point-LP High Definition Audio Controller (rev 11) (prog-if 80)
        Subsystem: Lenovo Cannon Point-LP High Definition Audio Controller
        Flags: bus master, fast devsel, latency 64, IRQ 165
        Memory at ea23c000 (64-bit, non-prefetchable) [size=16K]
        Memory at ea000000 (64-bit, non-prefetchable) [size=1M]
        Capabilities: [50] Power Management version 3
        Capabilities: [80] Vendor Specific Information: Len=14 <?>
        Capabilities: [60] MSI: Enable+ Count=1/1 Maskable- 64bit+
        Kernel driver in use: sof-audio-pci
        Kernel modules: snd_hda_intel, snd_sof_pci
```

## Fix audio popping

```bash
$ hda-verb /dev/snd/hwC0D0 0x20 SET_COEF_INDEX 0x67
$ hda-verb /dev/snd/hwC0D0 0x20 SET_PROC_COEF 0x3000
```

[[source](https://bugzilla.kernel.org/show_bug.cgi?id=195457)]
