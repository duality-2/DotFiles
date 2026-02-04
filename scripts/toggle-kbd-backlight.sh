#!/bin/bash
current=$(brightnessctl --device='*kbd_backlight' get)
max=$(brightnessctl --device='*kbd_backlight' max)

if [ "$current" -eq 0 ]; then
    brightnessctl --device='*kbd_backlight' set 50%
elif [ "$current" -lt "$max" ]; then
    brightnessctl --device='*kbd_backlight' set 100%
else
    brightnessctl --device='*kbd_backlight' set 0
fi
