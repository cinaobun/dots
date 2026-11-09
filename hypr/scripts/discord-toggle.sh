#!/usr/bin/env bash
if hyprctl clients -j | jq -e '.[] | select(.class == "discord")' >/dev/null 2>&1; then
    hyprctl dispatch 'hl.dsp.focus({ window = "class:discord" })'
else
    cd "$HOME" && discord &
fi
