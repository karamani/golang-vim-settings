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

" vim-go settings
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

" CTRL-s - сохранить файл
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" CTRL-F4 - закрыть окно
noremap <C-F4> <C-w>c
inoremap <C-F4> <C-o><C-w>c
cnoremap <C-F4> <C-c><C-w>
onoremap <C-F4> <C-c><C-w>c

" SHIFT-Del are Cut
vnoremap <S-Del> "+x

" CTRL-Insert are Copy
vnoremap <C-Insert> "+y

" SHIFT-Insert are Paste
map <S-Insert>  "+gP
cmap <S-Insert> <C-R>+

" CTRL-z - отмена действия
noremap <C-z> u
inoremap <C-z> <C-O>u
" CTRL-y - вернуть отменённое назад
noremap <C-y> <C-R>
inoremap <C-y> <C-O><C-R>

" CTRL-d - дублирование текущей строки
imap <C-d> <esc>yypi

map <F7> :tabprevious<C-M>
map <F8> :tabnext<C-M>

filetype plugin indent on
