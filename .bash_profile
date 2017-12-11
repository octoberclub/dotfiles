export BASH_CONF="bash_profile"
eval "$(rbenv init -)"
export EDITOR='vim'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
eval "$(pyenv init -)"
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.hub-completion.bash ]; then
  . ~/.hub-completion.bash
fi

alias ll='ls -l'
alias hg='history | grep '

eval "$(hub alias -s)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export HISTSIZE=
export HISTFILESIZE=
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

