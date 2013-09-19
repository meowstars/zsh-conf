# My functions (don't forget to modify fpath before call compinit !!)
fpath=($HOME/.zsh/functions $fpath)


# in order to have many completion function run comptinstall !

autoload -U zutil
autoload -U compinit
autoload -U complist

# Activation
compinit

local os host

# Set default umask to 027, can be overriden by host specific resource file
umask 027

# Per host resource file
host=${$(hostname)//.*/}
if [ -f "$HOME/.zsh/rc.hosts/${host}.zsh" ] ; then
    source "$HOME/.zsh/rc.hosts/${host}.zsh"
else
    source "$HOME/.zsh/rc.hosts/default.zsh"
fi

# Per OS/distribution resource file
os=$(uname)
[ -f "$HOME/.zsh/rc.os/${os}.zsh" ] && source "$HOME/.zsh/rc.os/${os}.zsh"

# Global resource files
for file in $HOME/.zsh/rc/*.zsh; do
    source $file
done

# Local file
[[ -f ~/.zsh/rc.local ]] && source ~/.zsh/rc.local
