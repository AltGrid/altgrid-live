neofetch --ascii_distro ALTGRID
neofetch --ascii /etc/altgrid/ascii.txt

# ALTGRID custom prompt
PS1='\[\033[38;5;40m\][\u@\h \W]\$\[\033[0m\] '

# Run neofetch at login
if [ -x "$(command -v neofetch)" ]; then
  neofetch
fi

