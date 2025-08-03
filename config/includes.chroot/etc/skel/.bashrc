# ~/.bashrc — ALTGRID Station Shell
# This shell belongs to an Operator, Line Walker, Courier, or Station Keeper.
# Made for after the internet, when survival is hunting, tinkering, and Linux.

# ------------------------------------------------------------------------------
# PATH BOOTSTRAP — Always honor the operator's local tools
# ------------------------------------------------------------------------------

# Add local executable bins to the path
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# ------------------------------------------------------------------------------
# PROMPT SETUP — Non-graphical, high-contrast, neutral tone
# ------------------------------------------------------------------------------

# Shell prompt shows your station, directory, and line position
# Ex: [ALTGRID@junction03:/var/log]
PS1='\[\033[1;32m\][ALTGRID@\h:\w]\$\[\033[0m\] '

# ------------------------------------------------------------------------------
# HISTORY + BEHAVIOR — Keep logs tight, ignore noise
# ------------------------------------------------------------------------------

# Store command history between sessions
HISTFILE=~/.bash_history
HISTSIZE=1000
HISTCONTROL=ignoredups:erasedups

# Suppress command echoing of repeated actions
shopt -s histappend

# ------------------------------------------------------------------------------
# ALIASES — Standardize the switchboard
# ------------------------------------------------------------------------------

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='vim'

# ------------------------------------------------------------------------------
# EDITOR LOGIC — Always fallback to something that works offline
# ------------------------------------------------------------------------------

if command -v vim &>/dev/null; then
    export EDITOR=vim
else
    export EDITOR=nano
fi

# ------------------------------------------------------------------------------
# INITIALIZE LOCAL BIN — Operator-defined scripts live here
# ------------------------------------------------------------------------------

if [ ! -d "$HOME/bin" ]; then
    mkdir -p "$HOME/bin"
    echo "#!/bin/bash" > "$HOME/bin/hello"
    echo 'echo "Terminal active. Rails are cold. Awaiting signal."' >> "$HOME/bin/hello"
    chmod +x "$HOME/bin/hello"
fi

# ------------------------------------------------------------------------------
# FIRST CONTACT — Only shown at shell start after boot
# ------------------------------------------------------------------------------

# Show AltGrid welcome message at first shell only (per boot)
if [ ! -f /tmp/.altgrid_welcome_shown ]; then
    [ -f ~/.altgrid/welcome.txt ] && cat ~/.altgrid/welcome.txt
    touch /tmp/.altgrid_welcome_shown
fi

# ------------------------------------------------------------------------------
# NOTES FOR FIELD OPERATORS:
#
# 1. Scripts go in ~/bin/
# 2. Keep logs in ~/logs/ — plaintext, timestamped
# 3. Use 'pulse' or 'reset-station' for testing comms
# 4. If contact fails, check /var/log/viatext or /tmp/
#
# This system assumes you are alone. Work accordingly.
# ------------------------------------------------------------------------------



