#!/usr/bin/env bash
# ~/.config/hypr/scripts/toggle-audio-output.sh

CURRENT=$(pactl get-default-sink)
SINKS=($(pactl list short sinks | awk '{print $2}'))

for i in "${!SINKS[@]}"; do
    if [[ "${SINKS[$i]}" == "$CURRENT" ]]; then
        NEXT="${SINKS[$(( (i + 1) % ${#SINKS[@]} ))]}"
        break
    fi
done

pactl set-default-sink "$NEXT"
pactl list short sink-inputs | awk '{print $1}' | while read -r input; do
    pactl move-sink-input "$input" "$NEXT"
done

DESC=$(pactl list sinks | grep -A1 "Name: $NEXT$" | grep "Description:" | sed 's/^[[:space:]]*Description: //')
notify-send "Audio output" "${DESC:-$NEXT}"
