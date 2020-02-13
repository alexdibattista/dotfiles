call plug#begin('~/.config/nvim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color'
  Plug 'avdgaag/vim-phoenix'
  Plug 'dbeniamine/todo.txt-vim'
  Plug 'dense-analysis/ale'
  Plug 'honza/vim-snippets'
  Plug 'itchyny/lightline.vim'
  Plug 'jreybert/vimagit'
  Plug 'junegunn/fzf',           { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'lambdalisue/gina.vim'
  Plug 'majutsushi/tagbar'
  Plug 'maximbaz/lightline-ale'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'mhinz/vim-mix-format'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'plytophogy/vim-virtualenv'
  Plug 'reedes/vim-wordy'
  Plug 'rhysd/vim-grammarous'
  Plug 'roxma/nvim-yarp'
  Plug 'ruanyl/vim-sort-imports'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sheerun/vim-polyglot'
  Plug 'slashmili/alchemist.vim'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'wellle/targets.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Map leader
let mapleader=","
let g:python_host_prog = '/Users/alex/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/alex/.pyenv/versions/neovim3/bin/python'

set t_Co=256
set background=dark
syntax on
let g:onedark_terminal_italics = 1
let g:onedark_hide_endofbuffer = 1
colorscheme onedark

" set indent guides and colours
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#474747 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#767676 ctermbg=4

" Local directories {{{
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
set undodir=~/.config/nvim/undo
" }}}


" Tab stops at 2 spaces
setlocal tabstop=2
" Tab key results in 2 spaces
set softtabstop=2
" The # of spaces for indenting
set shiftwidth=2
" set the width bar to 88 characters
setlocal cc=88
set clipboard+=unnamedplus
" Highlight current line
set cursorline
" Better display for messages
set cmdheight=2
" Ignore whitespace changes (focus on code changes)
set diffopt+=iwhite
" Add vertical spaces to keep right and left aligned
set diffopt=filler
" BOM often causes trouble
set encoding=utf-8 nobomb
" Expand tabs to spaces
set expandtab
set fillchars+=vert:\
" Column to show folds
set foldcolumn=0
" Enable folding
set foldenable
" Open all folds by default
set foldlevel=5
" Syntax are used to specify folds
set foldmethod=syntax
" Allow folding single lines
set foldminlines=0
" Set max fold nesting level
set foldnestmax=5
set gdefault
" when a buffer is brought to foreground, remember undo history and marks
set hidden
" Ignore case of searches
set ignorecase
set list!
" Enable extended regexes
set magic
" Enable the mouse
set mouse=a
" Disable error bells
set noerrorbells
set nomodeline
" Don't show the current mode (airline.vim takes care of us)
set noshowmode
" Don't reset cursor to start of line when moving around
set nostartofline
" Do not wrap lines
set nowrap
" Enable line numbers
set nu
" Set omni-completion method
set ofu=syntaxcomplete#Complete
" Show all changes
set report=0
set ruler
" Start scrolling three lines before horizontal border of window
set scrolloff=3
" Don't show the intro message when starting vim
set shortmess=atI
" Always show tab bar
set showtabline=2
" Start scrolling three columns before vertical border of window
set sidescrolloff=3
set signcolumn=yes
" Ignore 'ignorecase' if search patter contains uppercase characters
set smartcase
" New window goes below
set splitbelow
" New windows goes right
set splitright
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set termguicolors " Enable true color support
set title " Show the filename in the window title bar
" Persistent Undo
set undofile
" Restore buffer list, marks are remembered for 9999 files, registers up to 512Kb are remembered
set viminfo=%,'9999,s512
set visualbell
" Character for CLI expansion (TAB-completion)
set wildchar=<TAB>
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildignore+=.DS_Storeset wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
" Allow splits to be reduced to a single line
set winminheight=0
" Searches wrap around end of file
set wrapscan

" Toggle folds (<Space>) {{{
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>
" }}}

" Markdown {{{
augroup filetype_markdown
  autocmd!
  let g:markdown_fenced_languages = ['ruby', 'html', 'javascript', 'css', 'erb=eruby.html', 'bash=sh']
  let vim_markdown_preview_github=1
  let vim_markdown_preview_browser='Firefox'
  let vim_markdown_preview_hotkey='<C-m>'
  let g:vim_markdown_conceal = 0
  let g:vim_markdown_conceal_code_blocks = 0
augroup END
" }}}

" remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

let g:indent_guides_enable_on_vim_startup = 1

" Toggle show tabs and trailing spaces (,c) {{{
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>
" }}}

" Git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" todo {{{
augroup filetype_todo
  " Use todo#Complete as the omni complete function for todo files
  au filetype todo setlocal omnifunc=todo#Complete
  " Auto complete projects
  au filetype todo imap <buffer> + +<C-X><C-O>
  " Auto complete contexts
  au filetype todo imap <buffer> @ @<C-X><C-O>
  " Open autocomplete window even if only one match
  au filetype todo setlocal completeopt+=menuone
" }}}

" ale
let g:ale_completion_enabled = 0
let g:ale_virtualenv_dir_names = ['venv', '.env', 'env', 've', '.virtualenv', '.pyenv']
let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'typescript': ['eslint'],
      \  'python': ['flake8', 'pydocstyle'],
      \  'markdown': ['remark']}

let g:ale_fixers = {
      \  'elixir': ['mix_format'],
      \  'javascript': [],
      \  'typescript': [],
      \  'json': ['prettier'],
      \  'css': ['stylelint', 'prettier'],
      \  'python': ['isort'],
      \  'markdown': ['prettier']}

let g:ale_sign_error = '⇝'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_markdown_remark_lint_use_global = 1
let g:SimpylFold_docstring_preview=1

augroup lightline_config
  autocmd!

  let g:lightline#ale#indicator_checking = "\uf110 "
  let g:lightline#ale#indicator_warnings = "\uf071 "
  let g:lightline#ale#indicator_errors = "\uf05e "
  let g:lightline#ale#indicator_ok = "\uf00c "
  let g:lightline#bufferline#enable_devicons = 1
  let g:lightline#bufferline#show_number = 1

  let g:lightline = {}
  let g:lightline.colorscheme = 'onedark'
  let g:lightline.tabline          = {'left': [['buffers']], 'right': [[]]}
  let g:lightline.component_expand = {
    \   'linter_checking': 'lightline#ale#checking',
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \   'linter_ok': 'lightline#ale#ok',
    \   'buffers': 'lightline#bufferline#buffers'
    \ }

  let g:lightline.component_type = {
    \   'linter_checking': 'left',
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \   'linter_ok': 'left',
    \   'buffers': 'tabsel'
    \ }

  let lightline.component_function = {
    \   'gitbranch': 'Git',
    \   'filetype': 'MyFiletype',
    \   'fileformat': 'MyFileformat',
    \   'venv': 'virtualenv#statusline',
    \   'filename': 'FilenameForLightline',
    \   'charvaluehex': 'CharValueHex'
    \ }

  let g:lightline.separator = { 'left': '', 'right': '' }
  let g:lightline.subseparator = { 'left': '', 'right': '' }

  let g:lightline.active = {
    \   'left': [[ 'mode', 'paste' ],
    \            [  'gitbranch', 'readonly', 'filename', 'modified' ], ['venv']],
    \   'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
    \             [ 'lineinfo' ],
    \             [ 'cocstatus', 'currentfunction', 'fileformat', 'fileencoding', 'filetype', 'charvaluehex', 'percent' ]],
  \ }

  " Show full path of filename
  function! FilenameForLightline()
    return expand('%')
  endfunction

  function! CharValueHex()
    let charvaluehex = printf('%02x', char2nr(getline('.')[col('.')-1]))

    return winwidth(0) > 70 ? charvaluehex : ''
  endfunction

  function! Git()
    return gina#component#repo#name() .':' . gina#component#repo#branch()
  endfunction

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction
augroup END

" Turn on all highlighting for Python from vim-polygot
let g:python_highlight_all = 1

  " Window title {{{
  set titlestring=%{expand(\"%:t\")} " Set to just the filename
  " }}}
" Insert newline {{{
  map <leader><Enter> o<ESC>
" }}}

" Sudo write (,W) {{{
noremap <leader>W :w !sudo tee %<CR>
" }}}

" Remap :W to :w {{{
command! W w
" }}}

" add WIP to git {{{
  map <Leader>gw :!git add .; git commit -m 'WIP'; git push<cr>
" }}}

"Relative numbers {{{
  set relativenumber " Use relative line numbers. Current line is still in status bar.
  au BufReadPost,BufNewFile * set relativenumber
" }}}

" Strip trailing whitespace (,ss) {{{
function! StripWhitespace () " {{{
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction " }}}
noremap <leader>ss :call StripWhitespace ()<CR>
" }}}

" fzf {{{
augroup fzf_config
  set rtp+=/usr/local/opt/fzf

  let g:fzf_layout = { 'up': '~40%' }
  let g:fzf_history_dir = '~/.config/nvim/fzf-history'
  let g:fzf_buffers_jump = 1 " Jump to existing buffer if available

  nnoremap <C-p> :call Fzf_dev()<CR>
  nnoremap <C-g> :GFiles?<CR>
  nnoremap <C-b> :Buffers<CR>
  nnoremap <C-t> :Tags<CR>
  nnoremap <C-m> :Marks<CR>
  nnoremap <leader>l :Lines<CR>

  " Mapping selecting mappings
  nmap <leader><tab> <plug>(fzf-maps-n)
  xmap <leader><tab> <plug>(fzf-maps-x)
  omap <leader><tab> <plug>(fzf-maps-o)

  " Insert mode completion
  imap <c-x><c-k> <plug>(fzf-complete-word)
  imap <c-x><c-f> <plug>(fzf-complete-path)
  imap <c-x><c-j> <plug>(fzf-complete-file-ag)
  imap <c-x><c-l> <plug>(fzf-complete-line)
augroup END
" }}}

" vim-smooth-scroll {{{
augroup vim_smooth_scroll_config
  autocmd!
  noremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
  noremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
augroup END
" }}}

" TabBar {{{
  nmap ,8 :TagbarToggle<CR>
" }}}

" Buffers {{{
augroup buffer_control
  autocmd!

  " Buffer navigation (,,) (gb) (gB) (,ls) {{{
  map <Leader>, <C-^>
  map <Leader>ls :buffers<CR>
  map gb :bnext<CR>
  map gB :bprev<CR>
  " }}}

  " Jump to buffer number (<N>gb) {{{
  let c = 1
  while c <= 99
    execute "nnoremap " . c . "gb :" . c . "b\<CR>"
    let c += 1
  endwhile
  " }}}

  " Rename buffer (:Rename) {{{
  function! s:RenameBuffer(name)
    silent! execute 'saveas! ' . a:name
    let l:old_buffer = bufnr("#")
    let l:old_filename = expand("#:t")
    let l:new_buffer = bufnr("%")
    let l:new_filename = expand("%:t")
    silent! execute '!rm ' . shellescape(expand("#"), 1)
    silent! execute 'bd' l:old_buffer
    echom 'Renamed `' . l:old_filename . '` to `' . l:new_filename . '`'
  endfunction
  command! -nargs=1 Rename call s:RenameBuffer(<f-args>)
  " }}}
augroup END
" }}}

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif
" }}}

" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'up':    '40%' })
endfunction

" Silver Searcher {{{
augroup ag_config
  if executable('ag')
    " let g:ackprg = 'ag --vimgrep'
    let g:ackprg = 'rg --vimgrep --no-heading'
  endif
augroup END
" }}}


" EasyAlign.vim {{{
augroup easy_align_config
  autocmd!
  " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
  vmap <Enter> <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
  nmap <Leader>a <Plug>(EasyAlign)
augroup END
" }}}

" vim-repeat.vim {{{
augroup repeat_config
  autocmd!
  nmap z <Plug>(RepeatUndo)
  nmap gz <Plug>(RepeatUndoLine)
  nmap Z <Plug>(RepeatRedo)
augroup END
" }}}

" JSON {{{
augroup filetype_json
  autocmd!
  au BufRead,BufNewFile *.json set ft=json syntax=javascript
augroup END
" }}}

" Grammous {{{
let g:grammarous#default_comments_only_filetypes = {
  \ '*' : 1, 'help' : 0, 'markdown' : 1, 'gitcommit': 0,
\ }
let g:grammarous#use_vim_spelllang = 1
" }}}

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>" For conceal markers.
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" " Use tab for trigger completion with characters ahead and navigate.
" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


nnoremap <silent> <leader>ll <Plug>NetrwRefresh

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
