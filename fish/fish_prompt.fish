function fish_prompt --description 'Write out the prompt'
  # Save exit status first since it will be overwritten by below commands
  set -l last_status $status

  # Tweak git prompt
  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_hide_untrackedfiles 1
  set -g __fish_git_prompt_color_branch magenta --bold
  set -g __fish_git_prompt_showupstream "informative"
  set -g __fish_git_prompt_char_upstream_ahead "↑"
  set -g __fish_git_prompt_char_upstream_behind "↓"
  set -g __fish_git_prompt_char_upstream_prefix ""
  set -g __fish_git_prompt_char_stagedstate "●"
  set -g __fish_git_prompt_char_dirtystate "✚"
  set -g __fish_git_prompt_char_untrackedfiles "…"
  set -g __fish_git_prompt_char_invalidstate "✖"
  set -g __fish_git_prompt_char_cleanstate "✔"
  set -g __fish_git_prompt_color_dirtystate magenta
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_untrackedfiles normal
  set -g __fish_git_prompt_color_cleanstate green --bold

  # New line
  echo

  # User Info [name@hostname]
  printf '%s[%s@%s] ' (set_color yellow) (whoami) (prompt_hostname)

  # PWD
  set_color green
  echo -n (prompt_pwd)
  set_color normal

  # Git info
  echo -n (__fish_vcs_prompt)

  # Show exit status if any command failed
  if not test $last_status -eq 0
    set_color red
    echo -n " [$last_status]"
  end

  # Prompt
  set_color purple
  echo -n ' ➜  '
  set_color normal

end
