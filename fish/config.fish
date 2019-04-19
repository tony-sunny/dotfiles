set fish_greeting
set -x LSCOLORS gxBxhxDxfxhxhxhxhxcxcx
set -x EDITOR vim
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_INSTALL_CLEANUP 1
set -x FZF_DEFAULT_OPTS '--layout=reverse --height 50%'
set -x PATH $PATH /usr/local/sbin

function fish_mode_prompt; end

fish_vi_key_bindings

abbr lt 'tree -CFha -L 1'

abbr gg 'git gui'
abbr gti 'git'
abbr gits 'git status'
abbr gitb 'git branch'
abbr gitl 'git log'
abbr gitc 'git checkout'

abbr y2mp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
abbr myip 'dig +short myip.opendns.com @resolver1.opendns.com'
abbr update 'brew update && brew upgrade && brew cask upgrade && brew cleanup'

abbr vimrc 'vim ~/.vimrc'
abbr fishrc 'vim ~/.config/fish/config.fish'

# Make gif from video -> gif imput.mp4 output.gif
function gif
  ffmpeg -i $argv[1] -vf "fps=15,scale=320:-1:flags=lanczos,palettegen" -y palette.png
  ffmpeg -i $argv[1] -i palette.png -filter_complex "fps=15,scale=320:-1:flags=lanczos [x]; [x][1:v] paletteuse" $argv[2]
  rm palette.png
end

# File picker using fzf and opens in vim (e /path/)
function e
  vim -o (find $argv | fzf)
end

