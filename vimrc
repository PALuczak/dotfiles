set nocompatible

execute pathogen#infect()

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab

syntax on
set autoindent
set cindent

set smartcase
set ignorecase
set hlsearch
set incsearch

set number
set ruler
set showcmd
set wildmenu

set backspace=indent,eol,start
set laststatus=2
set confirm
set visualbell
set t_vb=
"set mouse=a

filetype plugin indent on

" theme
let g:solarized_termcolors=256
let g:solarized_visibility="high"
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif
set cursorline

"if (exists('+colorcolumn'))
"    set colorcolumn=80
"    highlight ColorColumn ctermbg=9
"endif

if $TERM == "xterm-256color"
  set t_Co=256
endif

" NERDtree
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

" Raimondi/delimitMate
let delimitMate_expand_cr = 1
augroup mydelimitMate
    au!
    au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    au FileType tex let b:delimitMate_quotes = "
    au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" xolox/vim-easytags
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" majutsushi/tagbar
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
"autocmd BufEnter * nested :call tagbar#autoopen(0)"
