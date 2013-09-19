#~~~~~~~~~~~~~~~
# ZSH Aliases 
#

# ls stuff
alias ls='ls --color=auto'
alias lsa='ls -lah'
alias l='ls -l'
alias ll='ls -la'
alias la='ls -lA'
alias sl='ls'

# Super user
alias _='sudo'

# Ssh as root
alias sr='ssh -l root'

# Show history
alias history='fc -l 1'

# Log startx
alias startx='startx &>| ~/.xlog'

# Use poweroff instead of halt
alias halt='sudo poweroff'

# Mount drives with rw rights for users
alias mount='sudo mount -o gid=users,fmask=113,dmask=002'

# Aliases for softs
alias t='python2 ~/bin/t.py --task-dir ~/.tasks --list tasks'
alias a='anigrate'
