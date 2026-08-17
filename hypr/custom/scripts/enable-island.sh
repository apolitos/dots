#!/bin/bash

LOCKFILE="/tmp/tide_ativo"

if [ -f "$LOCKFILE" ]; then
    pkill -f "tide-island"
    pkill quickshell
    rm "$LOCKFILE"
    noctalia msg bar-show
else
    QT_QPA_PLATFORM=wayland tide-island &
    touch "$LOCKFILE"
    noctalia msg bar-hide
fi
