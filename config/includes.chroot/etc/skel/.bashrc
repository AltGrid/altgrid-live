neofetch --ascii_distro ALTGRID
neofetch --ascii /etc/altgrid/ascii.txt

# ALTGRID custom prompt
PS1='\[\033[38;5;40m\][\u@\h \W]\$\[\033[0m\] '

# Run neofetch at login
# Avoid duplicate runs if already inside tmux or nested shell
if [ -z "$TMUX" ] && [ -z "$SSH_CLIENT" ]; then
  neofetch
fi

