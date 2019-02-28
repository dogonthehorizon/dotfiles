set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set -x NPM_PACKAGES "$HOME/.npm-packages"
set -x PATH ~/bin ~/.local/bin "$NPM_PACKAGES/bin" $PATH
set -x VISUAL vim
set -x QT_QPA_PLATFORMTHEME qt5ct
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
set -x MANPATH "$NPM_PACKAGES/share/man:(manpath)"

set fish_greeting # disable the fish greeting message

alias vi vim
alias g git
alias cdtmp "cd (mktemp --directory)"
alias pacclean "pikaur -Rns (pikaur -Qtdq)"
