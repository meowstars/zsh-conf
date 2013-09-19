# Source distribution config
if [ -f /etc/arch-release ]; then
    source ~/.zsh/rc.os/archlinux.zsh
elif [ -f /etc/debian_version ]; then
    source ~/.zsh/rc.os/debian.zsh
fi
