" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" Configure Tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set laststatus=2

" Display options
set showmode
set showcmd

" Show matching brackets.
set showmatch

" Show line numbers
set number


" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Always set autoindenting on
set autoindent 

function! GetDateAndTime()
    return strftime(" %d/%m - %H:%M:%S")
endfunction

set statusline+=\%{GetDateAndTime()}

set sessionoptions-=options

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    let g:airline_symbols.branch = '⎇'
endif

let g:airline_theme='ravenpower'
" let g:airline_theme='simple'
" let g:airline_theme='dark_minimal'
let g:airline_section_y ='%{strftime("%c")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = '▶'
let g:airline_detect_modified=1
let g:airline_detect_paste=1

" PLUGINS
" Install plugin manager
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" https://vimawesome.com/plugin/fugitive-vim
Plug 'tpope/vim-fugitive'

" https://vimawesome.com/plugin/nerdtree-red
Plug 'scrooloose/nerdtree'

" https://vimawesome.com/plugin/vim-airline-superman
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" https://vimawesome.com/plugin/dockerfile-vim
Plug 'ekalinin/dockerfile.vim'

" https://vimawesome.com/plugin/vim-javascript
Plug 'pangloss/vim-javascript'

Plug 'chrisbra/csv.vim'

call plug#end()
