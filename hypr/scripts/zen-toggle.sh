if hyprctl clients -j | jq -e '.[] | select(.class == "zen")' >/dev/null 2>&1; then
    hyprctl dispatch 'hl.dsp.focus({ window = "class:zen" })'
else
    cd "$HOME" && zen-browser &
fi
