set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after
let &packpath = &runtimepath
set guicursor=
autocmd OptionSet guicursor noautocmd set guicursor=
set nocompatible
filetype plugin indent on
" Need to set the leader before defining any leader mappings
let mapleader = ","

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

call plug#begin('~/.config/nvim/plugged')
  call s:SourceConfigFilesIn('rcplugins')
call plug#end()

map <Leader>, <C-^>
map <Leader>ls :buffers<CR>
map gb :bnext<CR>
map gB :bprev<CR>

call s:SourceConfigFilesIn('rcfiles')
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/Users/alexd/.pyenv/shims/python'
