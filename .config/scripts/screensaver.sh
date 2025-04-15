#!/bin/bash

if pgrep -x cava || pgrep -x pipes.sh; then
    exit 0
fi

if playerctl --player=spotify status | grep -q "Playing"; then
    kitty --start-as fullscreen cava
else
    kitty --start-as fullscreen pipes.sh -p 5 -t 1 -r 5000 -K -R -B
fi
