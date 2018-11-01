### OPTIONS

setopt prompt_subst
setopt append_history
setopt hist_ignore_all_dups
setopt inc_append_history
unsetopt prompt_cr prompt_sp
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
export HISTIGNORE="ls::exit:clear:cd:cd .."

## Completion 
autoload -Uz compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

## Prompt
autoload -U colors && colors
autoload -Uz vcs_info
precmd() { vcs_info }

PROMPT_STATUS="%(?..%{$fg[red]%}[%?] )"
PROMPT_USER="%{$fg[green]%}[%n%{$fg[red]%}@%{$fg[cyan]%}%m]"
PROMPT_PWD="%{$fg[yellow]%}%2~"
PROMPT_RESET="%{$reset_color%}"

PROMPT=$'\n${PROMPT_STATUS}${PROMPT_USER} ${PROMPT_PWD}%{$fg[green]%}${vcs_info_msg_0_}${PROMPT_RESET} %# '

## Souce files and env
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$HOME/workspace/scripts:$GOPATH/bin
export HOMEBREW_NO_AUTO_UPDATE=1
export NVM_DIR=$HOME/.nvm
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

[ -f $NVM_DIR/nvm.sh ] && source $NVM_DIR/nvm.sh
[ -f ~/.shell_aliases ] && source ~/.shell_aliases
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh 
