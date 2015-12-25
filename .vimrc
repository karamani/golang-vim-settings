syntax on
colorscheme codeschool

set nocompatible " убираем совместимость со старым vi

set number " показывать номера строк в редакторе
set colorcolumn=120 " вертикальная линия после 120 символов
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина 'мягкого' таба

set completeopt-=preview

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'

Plugin 'Shougo/neocomplete'

call vundle#end()

" NERDTree settings
autocmd vimenter * NERDTree " Открывать дерево каталогов при запуске VIM
map <F12> :NERDTreeToggle<CR>

" neocomplete settings
let g:neocomplete#enable_at_startup = 1

" CTRL-s - сохранить файл
nmap <C-s> :w<cr>
vmap <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>a

" CTRL-F4 - закрыть окно
noremap <C-F4> <C-w>c
inoremap <C-F4> <C-o><C-w>c
cnoremap <C-F4> <C-c><C-w>
onoremap <C-F4> <C-c><C-w>c

" CTRL-x - вырезать
vnoremap <C-x> "+x 
" CTRL-c - копировать
vnoremap <C-c> "+y
" CTRL-V вставить под курсором
map <C-v>      "+gP

" CTRL-z - отмена действия
noremap <C-z> u
inoremap <C-z> <C-O>u
" CTRL-y - вернуть отменённое назад
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-d - дублирование текущей строки
imap <C-d> <esc>yypi

filetype plugin indent on
