let g:python_host_prog = '/Users/alex/.virtualenvs/neovim/bin/python'
let g:python3_host_prog = '/Users/alex/.virtualenvs/neovim3/bin/python'

let g:LanguageClient_serverCommands = {
    \'python': ['/Users/alex/.virtualenvs/neovim3/bin/pyls'],}
" setlocal formatexpr=LanguageClient#textDocument_rangeFormatting_sync()

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" Syntax highlighting {{{
set t_Co=256
set background=dark
colorscheme onedark
" }}}

syntax on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"
" Local directories {{{
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
set undodir=~/.config/nvim/undo
" }}}

let mapleader="," " Map leader

set cc=120
autocmd BufNewFile,BufRead *.py set cc=80
set clipboard=unnamed
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set expandtab " Expand tabs to spaces
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set hidden " when a buffer is brought to foreground, remember undo history and marks
set ignorecase " Ignore case of searches
set list!
set magic " Enable extended regexes
set mouse=a " Enable the mouse
set noerrorbells " Disable error bells
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set nu " Enable line numbers
set ofu=syntaxcomplete#Complete " Set omni-completion method
set report=0 " Show all changes
set ruler
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shiftwidth=2 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set softtabstop=2 " Tab key results in 2 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set termguicolors " Enable true color support
set title " Show the filename in the window title bar
set undofile " Persistent Undo
set viminfo=%,'9999,s512 " Restore buffer list, marks are remembered for 9999 files, registers up to 512Kb are remembered
set visualbell
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Storeset wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file
set signcolumn=yes

" Enable folding
set foldmethod=indent
set foldlevel=99
autocmd FileType python set autoindent
let python_highlight_all = 1
" Enable folding with the spacebar
nnoremap <space> za

let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"} " autoclose escape key

" PEP 8 Standards
" au BufNewFile,BufRead *.py
    " \ set tabstop=4
    " \ set softtabstop=4
    " \ set shiftwidth=4
    " \ set textwidth=79
    " \ set expandtab
    " \ set autoindent
    " \ set fileformat=unix

" remove whitespace on save
autocmd BufWritePre * %s/\s\+$//e

map <C-\> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:indent_guides_enable_on_vim_startup = 1

" Toggle show tabs and trailing spaces (,c) {{{
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>
" }}}

" ale
let g:ale_completion_enabled = 0
let g:ale_virtualenv_dir_names = ['venv', '.env', 'env', 've', 'virtualenv', '.pyenv']
let b:ale_linter_aliases = {'tsx': 'typescript'}
let g:ale_linters = {
      \  'javascript': ['eslint'],
      \  'typescript': ['tsserver', 'eslint'],
      \  'python': ['pyls'],
      \  'markdown': ['remark']}
let g:ale_fixers = {}
let g:ale_fixers = {
      \  'javascript': ['prettier', 'eslint'],
      \  'typescript': ['prettier', 'eslint'],
      \  'json': ['prettier'],
      \  'css': ['stylelint', 'prettier'],
      \  'python': ['autopep8'],
      \  'markdown': ['prettier']}

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = '⇝'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_markdown_remark_lint_use_global = 1
let g:ale_python_pycodestyle_executable = "~/.virtualenvs/neovim3/bin/pycodestyle"
let g:ale_python_black_executable = "~/.virtualenvs/neovim3/bin/black"
let g:ale_python_pyls_executable  = "/Users/alex/.virtualenvs/neovim3/bin/pyls"
let g:SimpylFold_docstring_preview=1


" Airline.vim {{{
augroup airline_config
  autocmd!
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_powerline_fonts = 1
  let g:airline_section_b = '%{gina#component#repo#name()}:%{gina#component#repo#branch()}'
  let g:airline_skip_empty_sections = 1
  let g:airline_symbols.linenr = '␤'

  let g:airline#extensions#ale#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_format = '%s '
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamecollapse = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#formatter = 'jsformatter'
augroup END
" }}}

" Insert newline {{{
  map <leader><Enter> o<ESC>
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

  nnoremap <C-p> :Files<CR>
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

nmap <F8> :TagbarToggle<CR>

" NERD Commenter {{{
augroup nerd_commenter
  autocmd!

  let NERDSpaceDelims=1
  let NERDCompactSexyComs=1
  let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }
augroup END
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

" Silver Searcher {{{
augroup ag_config
  if executable('ag')
    let g:ackprg = 'ag --vimgrep'
  endif
augroup END
" }}}

" jsx-pretty.vim {{{
augroup jsx_pretty_config
  autocmd!
  let g:vim_jsx_pretty_colorful_config = 1
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

" JavaScript {{{
augroup filetype_javascript
  autocmd!
  let g:jsx_ext_required = 0
  let g:javascript_plugin_jsdoc = 1
augroup END
" }}}

" JSON {{{
augroup filetype_json
  autocmd!
  au BufRead,BufNewFile *.json set ft=json syntax=javascript
augroup END
" }}}

call plug#begin('~/.config/nvim/plugged')
  " Utilities
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'reedes/vim-wordy'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'Shougo/vimproc.vim',     { 'do' : 'make' }
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-endwise'
  Plug 'rstacruz/vim-closer'
  Plug 'godlygeek/tabular'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/denite.nvim'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'majutsushi/tagbar'
  Plug 'tpope/vim-obsession'
  Plug 'w0rp/ale'
  Plug 'roxma/nvim-yarp'
  Plug 'sheerun/vim-polyglot'
  Plug 'mileszs/ack.vim'
  Plug 'honza/vim-snippets'
  Plug 'dracula/vim', { 'as': 'dracula' }

  " Themes
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'

  " Search
  Plug 'junegunn/fzf',           { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  " Elixir Support
  Plug 'elixir-lang/vim-elixir'
  Plug 'avdgaag/vim-phoenix'
  Plug 'frost/vim-eh-docs'
  Plug 'slashmili/alchemist.vim'
  Plug 'jadercorrea/elixir_generator.vim'
  Plug 'mhinz/vim-mix-format'

  " JavaScript
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
  " Plug 'mxw/vim-jsx'
  Plug 'maxmellon/vim-jsx-pretty', { 'for': [ 'javascript', 'javascript.jsx', 'typescript' ] }
  " Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
  " Plug 'carlitux/deoplete-ternjs'
  " Plug 'leafgarland/typescript-vim'
  " Plug 'pangloss/vim-javascript'
  " Plug 'othree/yajs'
  " Plug 'jparise/vim-graphql'
  " Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  " Plug 'zchee/deoplete-jedi'

  " Python
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'lepture/vim-jinja'
  Plug 'plytophogy/vim-virtualenv'
  Plug 'vim-python/python-syntax'
  Plug 'tmhedberg/SimpylFold'

  " CSS
  Plug 'JulesWang/css.vim'
  Plug 'ap/vim-css-color'

  " JSON
  Plug 'elzr/vim-json'

  " SQL
  Plug 'exu/pgsql.vim'

  " GIT
  Plug 'lambdalisue/gina.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'jreybert/vimagit'

  " Fish
  Plug 'vim-scripts/fish.vim',   { 'for': 'fish' }
  Plug 'dag/vim-fish'

  " TMUX
  " Plug 'prabirshrestha/async.vim'
  " Plug 'prabirshrestha/asyncomplete.vim'
call plug#end()


let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ['tern']
let g:tern#arguments = [' — persistent']

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" call deoplete#custom#source('matchers', ['matcher_fuzzy'])

