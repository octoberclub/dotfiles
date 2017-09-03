export BASH_CONF="bash_profile"
export EDITOR='vim'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
HISTSIZE=5000
HISTFILESIZE=10000
