function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

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

  set -g __fish_git_prompt_color_dirtystate blue
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
  set -g __fish_git_prompt_color_cleanstate green --bold

  set -g __fish_prompt_normal (set_color normal)

  set -l suffix
  switch "$USER"
      case root toor
          set suffix '#'
      case '*'
          set suffix '➜ '
  end
 
  # New Line
  echo  ""

  # User Info
  printf '%s[%s@%s]%s ' (set_color yellow) (whoami) (prompt_hostname) (set_color normal)
 

  # PWD
  set_color green
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_vcs_prompt)
  echo ""

  if not test $last_status -eq 0
      set_color $fish_color_error
      echo -n "[$last_status] "
      set_color normal
  end

  set_color purple
  echo -n "$suffix "
  set_color normal
end
