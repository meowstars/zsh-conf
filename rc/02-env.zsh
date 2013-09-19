# vi/vim
if [ -x $(which -p vim) ]; then 
    alias vi="vim"
    export EDITOR=vim
    export VISUAL=vim
fi

# less
if [ -x `which most` ]; then
    export PAGER=most
fi

# Path includes user's bin/ and zsh's bin/
PATH=$PATH:~/.zsh/bin:~/bin
export PATH
