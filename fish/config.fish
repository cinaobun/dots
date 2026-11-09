if status is-login
    if test -z "$DISPLAY"; and test "$XDG_VTNR" = 1
        exec startx
    end
end

set -g fish_greeting ""

starship init fish | source


	# Arch
alias i    'doas pacman -S'
alias r    'doas pacman -R'
alias s    'doas pacman -Ss'
alias u    'doas pacman -Syu'

	# Fetch
alias f    'fetch'
alias ff   'fastfetch'
alias ffd  'fastfetch -c ~/.config/fastfetch/config-distro.jsonc'
alias fff  'fastfetch -c ~/.config/fastfetch/config-full.jsonc'

	# System
alias e    'exit'
alias ll   'ls -la'
alias c    'clear'
alias rld  'hyprctl reload'
alias sht  'poweroff'
alias rbt  'reboot'
alias lsf  'lsblk -f'
alias fts  'fc-list : family'
alias peg  'ffmpeg -i'
alias kil  'pkill -9 -f'
alias own  'doas chown -R bun:bun'
alias rem  'doas rm -rf'
alias mew  'ping meow.com'

	# Editing
alias mod  'nvim .config/hypr/'
alias fih  'nvim .config/fish/config.fish'
alias kih  'nvim .config/kitty/kitty.conf'
alias iii  'nvim .config/i3/config'
alias ala  'nvim .config/alacritty/alacritty.toml'

	# Misc
alias dat  'date +%T'
