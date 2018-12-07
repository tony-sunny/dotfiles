### OPTIONS

setopt prompt_subst
setopt inc_append_history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

## Completion 
autoload -Uz compinit && compinit

## Prompt
autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%F{yellow}[%b%(a.. %a)]%f "
precmd() { vcs_info }

PROMPT_STATUS="%(?..%F{red}[%?]%f )"
PROMPT_USER_PWD="%B%F{green}[%n@%m] %F{cyan}%2~%f%b "
PROMPT_END="%B%F{red}->%f%b "

PROMPT=$'\n${PROMPT_STATUS}${PROMPT_USER_PWD}${vcs_info_msg_0_}${PROMPT_END}'

## Colorize less
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'

## Souce files and env
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$HOME/workspace/scripts:$GOPATH/bin
export HOMEBREW_NO_AUTO_UPDATE=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

[ -f ~/.shell_aliases ] && source ~/.shell_aliases
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh 
