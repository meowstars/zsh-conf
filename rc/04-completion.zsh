# Completion options

setopt ALWAYS_TO_END # Always put the cursor to the end when complete
setopt AUTO_LIST # Display a list on ambiguous completion
setopt AUTO_NAME_DIRS # Expand parameters names
setopt AUTO_PARAM_KEYS
setopt AUTO_PARAM_SLASH
setopt AUTO_REMOVE_SLASH
setopt COMPLETE_ALIASES # Don't substitude aliases
setopt LIST_PACKED
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

unsetopt LIST_AMBIGUOUS
unsetopt MENU_COMPLETE
WORDCHARS=''


# Formatting
zstyle ':completion:*' verbose yes
# zstyle ':completion:*:descriptions' format 
