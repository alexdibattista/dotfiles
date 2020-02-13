function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function fish_mode_prompt
  set -l segment_separator \uE0B0
  set -l bg (set_color -b 282C34)

  if [ (_git_branch_name) ]
    set bg (set_color -b 5C6370)
  else if set -q VIRTUAL_ENV
    set bg (set_color -b 4B5263)
  end

  switch $fish_bind_mode
    case default
      echo ( set_color -b 98C379 282C34 ) 'NORMAL '
      echo -n $bg
      set_color 98C379
      echo -n "$segment_separator"
    case insert
      echo ( set_color -b 61AFEF 282C34 ) 'INSERT '
      echo -n $bg
      set_color 61AFEF
      echo -n "$segment_separator"
    case replace_one
      echo ( set_color -b E06C75 282C34 ) 'REPLACE'
      echo -n $bg
      set_color E06C75
      echo -n "$segment_separator"
    case visual
      echo ( set_color -b C678DD 282C34 ) 'VISUAL '
      echo -n $bg
      set_color C678DD
      echo -n "$segment_separator"
    case '*'
      echo ( set_color -b BE5046 282C34 ) '?'
      echo -n $bg
      set_color BE5046
      echo -n "$segment_separator"
  end
  echo -n $bg
end
