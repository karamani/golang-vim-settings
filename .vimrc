syntax on
colorscheme codeschool

set nocompatible " убираем совместимость со старым vi

set number " показывать номера строк в редакторе
set colorcolumn=120 " вертикальная линия после 120 символов
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина 'мягкого' таба

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'

call vundle#end()

autocmd vimenter * NERDTree " Открывать дерево каталогов при запуске VIM
map <F2> :NERDTreeToggle<CR>

filetype plugin indent on
