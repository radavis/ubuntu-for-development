#!/usr/bin/env bash

# install alsa-tools, first
# apt-get install alsa-tools

hda-verb /dev/snd/hwC0D0 0x20 SET_COEF_INDEX 0x67
hda-verb /dev/snd/hwC0D0 0x20 SET_PROC_COEF 0x3000
