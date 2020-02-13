# name: clearance
# ---------------
# Based on idan. Display the following bits on the left:
# - Virtualenv name (if applicable, see https://github.com/adambrenecki/virtualfish)
# - Current directory name
# - Git branch and dirty state (if inside a git repo)


function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l segment_separator \uE0B0
  set -l thin_segment_separator \uE0B1
  set -l last_status $status

  set -l white (set_color ABB2BF)
  set -l cyan (set_color 56B6C2)
  set -l yellow (set_color E5C07B)
  set -l dark_yellow (set_color D19A66)
  set -l light_red (set_color E06C75)
  set -l dark_red (set_color BE5046)
  set -l blue (set_color 61AFEF)
  set -l green (set_color 98C379)
  set -l grey (set_color 4B5263)
  set -l dark_grey (set_color 5C6370)
  set -l normal (set_color normal)

  set -l cwd $white(pwd | sed "s:^$HOME:~:")

  # Print pwd or full path
  echo -n -s " " $cwd " " $thin_segment_separator

  set -l prompt_color $dark_red
  if test $last_status = 0
    set prompt_color $normal
  end

  # # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b 4B5263 98C379) ' ' (basename "$VIRTUAL_ENV") " "
    set_color -b 5C6370
    set_color 4B5263
    echo -n "$segment_separator"
  end

  # Show git branch and status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info  $yellow $git_branch "±"
    else
      set git_info $green $git_branch
    end
    set_color -b 5C6370
    echo -n -s ' ' $git_info ' '
    set_color -b 282C34
    set_color 5C6370
    echo -n "$segment_separator"
  end


  # Terminate with a nice prompt char
  echo -e ''
  echo -e -n -s $prompt_color '> ' $normal
end

