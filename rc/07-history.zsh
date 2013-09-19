#
# History options
#

setopt EXTENDED_HISTORY # add a timestamp and the duration of each command
setopt SHARE_HISTORY # _all_ zsh sessions share the same history files
setopt HIST_IGNORE_ALL_DUPS # ignores duplications
setopt HIST_IGNORE_SPACE # Don't record commands with leading spaces in history
setopt HIST_LEX_WORDS # Better words lexer
setopt APPEND_HISTORY # Append histroy instead of replace it
setopt HIST_REDUCE_BLANKS # Trim useless blanks before recording a command
setopt HIST_VERIFY # expand the history command before executing

if [[ $USER != "root" ]] ; then
    HISTFILE=~/.zsh/histories/${$(hostname)//.*/}
else
    HISTFILE=~/.zsh/histories/${$(hostname)//.*/}.root
fi

HISTFILE=~/.zsh/histories/$(hostname)
HISTSIZE=1000000
SAVEHIST=1000000

export HISTFILE HISTSIZE SAVEHIST
