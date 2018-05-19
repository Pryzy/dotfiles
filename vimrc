set nocompatible              " required
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" Colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on   

" Colorscheme settings
syntax on
colorscheme molokai

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Cscope setup
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

" Tab = 4 spaces and read Tab as 4 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Show relative number
set relativenumber

" Show cursorline
set cursorline

" Show last command
set showcmd

" Highlight search result
set hlsearch

" Turn off highligh search result
nnoremap <C-l> :nohlsearch<Bar>:echo<CR>

" Set path for searching
set path+=**

" Autocomplete commands
set wildmenu

" Allow mouse operation
set mouse=a 

" Change leader key to -
let mapleader="-"

" Shortcut for NERDtree
nnoremap <Leader>ne :NERDTreeToggle<CR>

" Faster scrolling
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>

