# Prompt 
autoload -U colors
colors

# Format
date_format="%H:%M"

date="%{$fg[$date_color]%}%D{$date_format}"

if [[ $(whoami) == "root" ]] ; then
    # root
    user="%{$fg[$root_color]%}%n"
else
    # Regular user
    user="%{$fg[$user_color]%}%n"
fi

host="%{$fg[$host_color]%}%m"

cpath="%{$fg[$path_color]%}%B%/%b"
end="%{$reset_color%}"

PS1="[$date$end]($user$end~$host$end):$cpath
$end%# "
