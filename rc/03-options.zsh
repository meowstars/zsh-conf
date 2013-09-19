# -*- shell-script -*-
#
# Zsh Options
#

export LISTPROMPT       # in order to scroll if completion list is too big

setopt always_to_end    # move to cursor to the end after completion
setopt auto_cd          # a commande like % /usr/local is equivalent to cd /usr/local
setopt auto_pushd       # Always push directory in stack
setopt check_jobs
setopt extended_glob    # in order to use #, ~ and ^ for filename generation
setopt function_argzero
setopt histverify       # Verify history expansion
setopt interactivecomments # Allow comments even in interactive shells.
setopt multios
setopt nohup            # don't send HUP signal when closing term session
setopt notify           # report the status of backgrounds jobs immediately
setopt printexitvalue   # show the exit-value if > 0
setopt pushdminus       # Invert the behavior of cd -<tab> cd +<tab>
setopt rmstarwait       # wait 10 seconds before querying for a rm which contains a *

unsetopt bg_nice
unsetopt correct          # try to correct the spelling if possible
unsetopt nullglob
unsetopt rm_star_silent

export DIRSTACKSIZE=20  # Number of directory to keep in the stack

# Don't erase file with >, use >| (overwrite) or >> (append) instead 
set -C

# Watch new users
watch=(all)
LOGCHECK=5
