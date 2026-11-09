#!/usr/bin/env bash
step=5
dir=$1  # "up" or "down"

current=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print int($2*100+0.5)}')

if [ "$dir" = "up" ]; then
    new=$(( current + step ))
    [ $new -gt 100 ] && new=100
else
    new=$(( current - step ))
    [ $new -lt 0 ] && new=0
fi

wpctl set-volume @DEFAULT_SINK@ "${new}%"
