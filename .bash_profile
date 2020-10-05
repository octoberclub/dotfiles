export BASH_CONF="bash_profile"
export EDITOR='vim'
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias ll='ls -l'
alias hg='history | grep '

export HISTSIZE=
export HISTFILESIZE=
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

source ~/.bashrc
