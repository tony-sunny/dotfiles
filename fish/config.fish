set -x EDITOR vim
set -x LESSHISTFILE -
set -x FZF_DEFAULT_OPTS '--border --layout=reverse --height 60%'
set -x PATH $PATH /usr/local/sbin

set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_INSTALL_CLEANUP 1
set -x HOMEBREW_NO_ANALYTICS 1

# Turn off shell greeting
set fish_greeting

# Syntax highlighting
set fish_color_error red --bold
set fish_color_command green

abbr gti 'git'
abbr gg 'git gui'
abbr gits 'git status'
abbr gitb 'git branch'
abbr gitl 'git log'
abbr gitc 'git checkout'
abbr gitclean 'git reset --hard && git clean -fd'

abbr y2mp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 -o "~/Downloads/%(title)s.%(ext)s"'
abbr myip 'dig +short myip.opendns.com @resolver1.opendns.com'
abbr update 'brew update && brew upgrade && brew cask upgrade && brew cleanup'

abbr vimrc 'vim ~/.vimrc'
abbr fishrc 'vim ~/.config/fish/config.fish'

abbr node 'env NODE_REPL_HISTORY="" node'
abbr redis-cli 'env REDISCLI_HISTFILE=/dev/null redis-cli'
abbr nnn 'nnn -d'

abbr mp3tag 'wine "/Users/tony/.wine/drive_c/Program Files (x86)/Mp3tag/Mp3tag.exe"'
abbr ace 'wine "/Users/tony/.wine/drive_c/users/tony/Application Data/ACEStream/player/ace_player.exe"'

# Make gif from video -> gif imput.mp4 output.gif
function gif
  ffmpeg -i $argv[1] -vf "fps=15,scale=320:-1:flags=lanczos,palettegen" -y palette.png
  ffmpeg -i $argv[1] -i palette.png -filter_complex "fps=15,scale=320:-1:flags=lanczos [x]; [x][1:v] paletteuse" $argv[2]
  rm palette.png
end

# File viewer using fzf
function v
  find $argv -type f | env FZF_DEFAULT_OPTS= fzf --preview-window=right:70% --preview 'string match -r binary (file --mime {}) || bat --style=numbers --color=always {}'
end

# File picker using fzf and opens in vim (e /path/)
function e
  vim (find $argv -type f | env FZF_DEFAULT_OPTS= fzf --preview 'head -n 100 {}')
end

