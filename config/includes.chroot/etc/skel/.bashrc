# ~/.bashrc — ALTGRID + Debian Default
# This configuration combines Debian’s safe defaults with AltGrid operator logic.
# Colors match the AltGrid survival palette: cold base, warm alert, signal clarity.

# -------------------------------------------------------------------
# GUARD: Exit if not interactive shell
# -------------------------------------------------------------------
case $- in
    *i*) ;;
      *) return ;;
esac

# -------------------------------------------------------------------
# PATH BOOTSTRAP — Honor local operator toolchain
# -------------------------------------------------------------------
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# AltGrid PS1 Color Scheme
# Colors:
#   ALTGRID@HOST   — classic terminal green
#   path           — soft signal yellow
#   $ symbol       — deep terminal blue-gray

PS1='\[\e[38;2;102;255;102m\][ALTGRID@\h\[\e[0m\]:\[\e[38;2;245;235;155m\]\w\[\e[0m\]\[\e[38;2;70;70;100m\]\$\[\e[0m\] '

# -------------------------------------------------------------------
# HISTORY — Clean and efficient tracking
# -------------------------------------------------------------------
HISTFILE=~/.bash_history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

# -------------------------------------------------------------------
# LESS PIPE — More friendly for non-text input
# -------------------------------------------------------------------
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# -------------------------------------------------------------------
# CHROOT DETECTION (from Debian default)
# -------------------------------------------------------------------
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# -------------------------------------------------------------------
# FILE COLOR SUPPORT (ls, grep, etc)
# -------------------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# -------------------------------------------------------------------
# ALIASES — AltGrid style
# -------------------------------------------------------------------
alias vi='vim'
alias view='less'
alias biglog='dmesg | less'

# -------------------------------------------------------------------
# EDITOR CHOICE — Offline preferred
# -------------------------------------------------------------------
if command -v vim &>/dev/null; then
    export EDITOR=vim
else
    export EDITOR=nano
fi

# -------------------------------------------------------------------
# LOCAL BIN INITIALIZATION (AltGrid-only setup)
# -------------------------------------------------------------------
if [ ! -d "$HOME/bin" ]; then
    mkdir -p "$HOME/bin"
    echo "#!/bin/bash" > "$HOME/bin/hello"
    echo 'echo "Terminal active. Rails are cold. Awaiting signal."' >> "$HOME/bin/hello"
    chmod +x "$HOME/bin/hello"
fi

# -------------------------------------------------------------------
# ALTGRID WELCOME MESSAGE — Once per boot
# -------------------------------------------------------------------
if [ ! -f /tmp/.altgrid_welcome_shown ]; then
    [ -f ~/.altgrid/welcome.txt ] && cat ~/.altgrid/welcome.txt
    touch /tmp/.altgrid_welcome_shown
fi

# -------------------------------------------------------------------
# BASH COMPLETION (Debian default)
# -------------------------------------------------------------------
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

