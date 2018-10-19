### OPTIONS

setopt AUTO_CD
setopt NO_BEEP
unsetopt prompt_cr prompt_sp

## Command History
HISTSIZE=10000
SAVEHIST=10000
export HISTIGNORE="ls::exit:clear:cd:cd .."
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS

## Quote urls automatically when pasted to avoid globbing
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

## Completion 
autoload -Uz compinit
compinit

## Prompt
autoload -Uz promptinit
promptinit
prompt grml

zstyle ':prompt:grml:left:setup' items newline rc user at host path vcs percent
zstyle ':prompt:grml:left:items:user' pre '%B%F{green}'
zstyle ':prompt:grml:left:items:user' post '%b%f'
zstyle ':prompt:grml:left:items:at' pre '%B%F{red}'
zstyle ':prompt:grml:left:items:at' post '%b%f'
zstyle ':prompt:grml:left:items:host' pre '%B%F{cyan}'
zstyle ':prompt:grml:left:items:host' post '%b%f'
zstyle ':prompt:grml:left:items:path' pre '%B%F{yellow}'
zstyle ':prompt:grml:left:items:path' post '%b%f'

## bindkeys
bindkey "[B" history-search-forward
bindkey "[A" history-search-backward

## Souce files and env
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$HOME/workspace/scripts:$GOPATH/bin
export HOMEBREW_NO_AUTO_UPDATE=1
export NVM_DIR=$HOME/.nvm
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

[ -f $NVM_DIR/nvm.sh ] && source $NVM_DIR/nvm.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.shell_aliases ] && source ~/.shell_aliases
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
