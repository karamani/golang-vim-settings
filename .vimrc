set nocompatible              " be iMproved, required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'

call vundle#end()

syntax on
colorscheme codeschool

" NERDTree settings
autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>

filetype plugin indent on
