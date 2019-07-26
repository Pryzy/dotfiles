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
Plugin 'taylor/vim-zoomwin'
Plugin 'majutsushi/tagbar'
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
  nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
  
  " Using 'CTRL-spacebar' then a search type makes the vim window
  " split horizontally, with search result displayed in
  " the new window.
  
  nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>
  
  " Hitting CTRL-space *twice* before the search type does a vertical
  " split instead of a horizontal one
  
  nmap <C-@><C-@>s
  	\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>g
  	\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>c
  	\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>t
  	\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>e
  	\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <C-@><C-@>i
  	\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <C-@><C-@>d
	\:vert scs find d <C-R>=expand("<cword>")<CR><CR>

  " Add cscope base on startup
  cs add ./cscope.out

" Tab = 4 spaces and read Tab as 4 spaces
set expandtab
set shiftwidth=4
set softtabstop=4

" For Vim 8.0 fix backspace
set backspace=indent,eol,start

" Show relative number + absolute number
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained * set relativenumber
  autocmd BufLeave,FocusLost   * set norelativenumber
augroup END

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

