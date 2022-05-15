set number 
syntax on
set t_Co=256
set background=dark
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE
set laststatus=2  "needed to make lightline work
set noshowmode  "unneeded with lightline

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'

call plug#end()

let g:lightline = {'colorscheme': 'simpleblack',}
