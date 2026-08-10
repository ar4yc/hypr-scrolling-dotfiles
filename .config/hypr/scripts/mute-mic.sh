#!/bin/bash

wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
ID=999

if wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -q "MUTED"; then
    notify-send -r $ID -u critical -t 1500 "                                              Microphone" "<span size='130%' foreground='#ff5555'>                    </span>Off"
else
    notify-send -r $ID -u critical -t 1500 "                                              Microphone" "<span size='126%'>                    </span>On"
fi
