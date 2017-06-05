export EDITOR=vim
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:~/.local/bin:~/scripts:~/bin:$JAVA_HOME/jre/bin
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages
# Local bin
export MANPATH=/usr/local/share/man:$MANPATH

alias ga="git add"
alias gA="git add -A"
alias gs="git status"
alias stego-fortune="clear; fortune -o -s | cowsay -f stegosaurus | toilet -Sk -f  term"

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# added by travis gem
[ -f /Users/ffreire/.travis/travis.sh ] && source /Users/ffreire/.travis/travis.sh

autoload -Uz promptinit
promptinit
