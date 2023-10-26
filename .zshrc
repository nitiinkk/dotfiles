# ENV Variables/PATHs
export ZSH="${HOME}/.oh-my-zsh"
export EDITOR=vim
export PATH=/usr/local/bin/:$PATH:$HOME/bin


# ZSH Setup
plugins=(zsh-z zsh-autosuggestions aws git brew docker docker-compose zsh-syntax-highlighting)
#zsh-zplugin : z  # Searches frequently access directory
source $ZSH/oh-my-zsh.sh
autoload -U +X bashcompinit && bashcompinit
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

#Setup for terminal prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Env Variables
# Extra more custom ENV variables
[[ -f ~/.zsh/env.zsh ]] && source ~/.zsh/env.zsh

# Alias and Functions
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh

# Setup Fuzzy Finder
#^r   Searches command history
#^t   Searches directories
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

