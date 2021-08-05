[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -o nospace -C /usr/local/bin/terraform terraform
