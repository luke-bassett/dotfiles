" Select your Leader key
let mapleader = "\<Space>"

" install vim-plug if needed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vimrc'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:pyindent_open_paren = 'shiftwidth()'

set number
set backspace=indent,eol,start
