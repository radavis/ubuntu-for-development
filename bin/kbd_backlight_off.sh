#!/usr/bin/env bash

echo 0 | sudo tee /sys/class/leds/chromeos\:\:kbd_backlight/brightness
