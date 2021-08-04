" Use vim settings rather than vi settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim


filetype plugin indent on

"#######################
"#      GENERAL
"#######################

" When filetype detection didn't find a fancy identation scheme
set autoindent
" Automatically reload a file when it is changed outside
set autoread

" Color the column after textwidth, usually the 80th
set colorcolumn=80
"highlight ColorColumn ctermfg=red

" Insert spaces instead of tabs
set expandtab

" Enable folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=2
nnoremap <space> za

" Highlight matched strings. Type ":noh" to deactivate
set hlsearch

" Show search matches as you type
set incsearch

" Display whitespace characters
set list
set listchars=tab:>-,trail:.,extends:>

" Allowmouse use in vim
set mouse=a

" Disable swapfiles too
set noswapfile
" Show line number
set number
" Enables syntax highlighting
syntax on

" Display current line & column at the bottom right of screen
set ruler

" number of spaces inserted/removes when using < or >
set shiftwidth=4
" Briefly show matching braces, parenthesis etc
set showmatch
" Automatically inserts one extra level of indentation in some cases
set smartindent
" Insert tabulations on the start of a line according to shiftwidth, not
" tabstop
set smarttab
" number of spaces inserted when you press tab
set softtabstop=4

"#######################
"#      SETTINGS
"#######################

" Settings for Makefile.
autocmd FileType make 
    \ set noexpandtab
    \ set shiftwidth=8
    \ set softtabstop=0

" Settings for Python.
autocmd FileType *.py
    \ set tabstop=4 " length of a tabulation
    \ set softtabstop=4 " number of spaces inserted when you press tab
    \ set shiftwidth=4 " number of spaces inserted/removes when using < or >
    \ set textwidth=79
    \ set expandtab " Insert spaces instead of tabs
    \ set autoindent
    \ set fileformat=unix

"#######################
"#      FUNCTIONS
"#######################

" Make Vim recognizes <Alt> key.
function! s:alt_key_vim()
    let c='a'
    while c <= 'z'
      exec "set <A-".c.">=\e".c
      exec "imap \e".c." <A-".c.">"
      let c = nr2char(1+char2nr(c))
    endw
    set timeout ttimeoutlen=50
endfunction

call s:alt_key_vim()
highlight EndOfBuffer ctermfg=black ctermbg=black
