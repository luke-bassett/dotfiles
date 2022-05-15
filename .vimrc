" Basics
set number 
syntax on
set t_Co=256
set background=dark

" Cursor settings
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE

" Install vim-plug if needed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

" lightline specific stuff
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'simpleblack',}

" don't know why i added this, if you see this again and still don't, delte it
" let g:pyindent_open_param = 'shiftwidth()'
