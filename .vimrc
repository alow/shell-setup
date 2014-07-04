" syntax
syntax on
colorscheme koehler
set background=dark
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

" Show line numbers
set number

" Sets how many lines of history VIM has to remember
set history=700

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Always show the status line
set laststatus=2

execute pathogen#infect()
