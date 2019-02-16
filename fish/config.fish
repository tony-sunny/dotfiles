set fish_greeting
set -x LSCOLORS gxBxhxDxfxhxhxhxhxcxcx
set -x EDITOR vim
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x NNN_CONTEXT_COLORS '6521'

# Aliases
abbr lt 'tree -CFha -L 1'

abbr gg 'git gui'
abbr gti 'git'
abbr gits 'git status'
abbr gitb 'git branch'
abbr gitl 'git log'
abbr gitc 'git checkout'

abbr y2mp3 'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0'
abbr myip 'dig +short myip.opendns.com @resolver1.opendns.com'
abbr path 'echo $PATH | tr -s ":" "\n"'
abbr update 'brew update && brew upgrade && brew cleanup'

abbr zshrc 'vim ~/.zshrc'
abbr vimrc 'vim ~/.vimrc'
abbr fishrc 'vim ~/.config/fish/config.fish'

# Make gif from video -> gif imput.mp4 output.gif
function gif
  ffmpeg -i $argv[1] -vf "fps=15,scale=320:-1:flags=lanczos,palettegen" -y palette.png
  ffmpeg -i $argv[1] -i palette.png -filter_complex "fps=15,scale=320:-1:flags=lanczos [x]; [x][1:v] paletteuse" $argv[2]
  rm palette.png
end
