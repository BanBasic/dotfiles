#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#eceff4}$icon  $metadata"       # Blue when playing
elif [[ $player_status = "Paused" ]]; then
    echo " "                                   # nothing when paused
    #echo "%{F#B13F47}$icon  $metadata"       # Green out info when paused
else
    echo " "                                   # nothing when stopped
    #echo "%{F#B13F47}$icon "                 # Red icon when stopped
fi
