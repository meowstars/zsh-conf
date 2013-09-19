# Package management
if [ -x /usr/bin/yaourt ]; then
    # Synchronize and upgrade
    alias uu='yaourt -Sayu'
    # Install a package from repositories
    alias pi='yaourt -Sa'
    # Install a package from a file
    alias pf='yaourt -U'
    # Remove a package, keep conf and dependencies
    alias prm='yaourt -R'
    # Remove package, conf and unused dependencies
    alias prmf='yaourt -Rns'
    # Display info about a package in repositories
    alias prsh='yaourt -Si'
    # Display info about a local package
    alias plsh='yaourt -Qi'
    # Display package content
    alias psh='yaourt -Ql'
    # Search packages from local
    alias plls='yaourt -Qs'
    # Search packages from repositories
    alias pls='yaourt -Ss'
else
    alias uu='pacman -Syu'
    alias pi='pacman -Sa'
    alias pf='pacman -U'
    alias prm='pacman -R'
    alias prmf='pacman -Rns'
    alias prsh='pacman -Si'
    alias plsh='pacman -Qi'
    alias psh='pacman -Ql'
    alias plls='pacman -Qs'
    alias pls='pacman -Ss'
fi

