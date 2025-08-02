# altgrid-live
The portable AltGrid OS

## WELCOME OPERATOR

Run:

`
#!/bin/bash

sudo apt update
sudo apt install -y live-build squashfs-tools live-boot live-config xorriso isolinux
sudo apt install -y netselect-apt
`

Important Settings: 

`
config/includes.chroot/etc/hostname
    → Sets system hostname (e.g. "ALTGRID")

config/includes.chroot/etc/hosts
    → Maps hostname locally (e.g. 127.0.1.1 ALTGRID)

config/includes.chroot/etc/motd
    → Message of the Day shown *after* login

config/includes.chroot/etc/issue
    → TTY login banner (displayed *before* login prompt)

config/includes.chroot/etc/os-release
    → OS identity metadata (used by neofetch, uname tools, etc.)

config/includes.chroot/etc/skel/.bashrc
    → Default user shell config: includes PS1 prompt, neofetch, aliases, etc.

config/includes.chroot/etc/skel/.profile
    → Ensures `.bashrc` is sourced for login shells (optional but recommended)

config/includes.chroot/etc/altgrid/ascii.txt
    → Custom ASCII logo for `neofetch --ascii` (if used)

config/package-lists/altgrid.list.chroot
    → Main list of packages installed into the live system (e.g. htop, vim, ssh)

config/includes.chroot/usr/local/bin/
    → Add any custom scripts, tools, or command wrappers (e.g. `viatext-start`, `relayctl`)

config/hooks/
    → Run custom shell scripts during build phases (e.g. setup users, permissions)

config/bootloaders/
    → Customize boot splash, labels, or GRUB config (for branding or silent boot)

`


