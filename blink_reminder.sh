#!/bin/bash

while true
do
    # Check if the screensaver is active
    if [ "$(gnome-screensaver-command -q | grep -oP '(?<=\bactive\b)')" == "active" ]; then
        sleep 300  # 5 minutes in seconds
        continue  # Skip the reminder if the screensaver is active
    fi

    sleep 900  # 15 minutes in seconds

    # Display a notification to remind you to blink your eyes
    notify-send "Blink Reminder" "It's time to blink your eyes!"
done
