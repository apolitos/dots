#!/bin/bash

v=$(hyprctl getoption general:gaps_in | grep -o "[0-9]\+" | head -n1)

if [ "$v" -eq 0 ]; then
    hyprctl reload
    noctalia msg bar-show
else
    hyprctl eval 'hl.config({general = {gaps_in = 0}})'
    hyprctl eval 'hl.config({general = {gaps_out = 0}})'
    hyprctl eval 'hl.config({general = {border_size = 0}})'
    hyprctl eval 'hl.config({decoration = {rounding = 0}})'
    noctalia msg bar-hide
fi
