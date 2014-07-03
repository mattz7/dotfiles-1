" .vimrc

" Plugins

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'

call vundle#end()

let g:airline_theme='murmur'

" Settings

set laststatus=2

set tabstop=4       
 
set shiftwidth=4    
 
set expandtab       

set smarttab        
 
set showcmd        

set number          

set showmatch       
                    
set hlsearch        
 
set incsearch       
 
set ignorecase      
 
set smartcase       

set nocompatible    

set backspace=2      
 
set autoindent      
 
set textwidth=79   
 
set formatoptions=c,q,r,t 
 
set ruler 
 
set background=dark 
 
set mouse=a         
 
filetype plugin indent on
syntax enable

set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
    \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
    " Use the guicolorscheme plugin to makes 256-color or 88-color
    " terminal use GUI colors rather than cterm colors.
    runtime! plugin/guicolorscheme.vim
    colorscheme cottonmouse 
endif
