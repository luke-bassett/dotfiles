" ----- basics -----
set ignorecase
syntax on

" ----- line length -----
set textwidth=80
set formatoptions-=t " don't autowrap (use gq)

" ----- colors and background -----
set t_Co=256
set background=dark

" ----- cursor -----
" set cursor to have nice contrast
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE

" ----- tab settings -----
filetype plugin indent on
" show existing tabs with 4 space width
set tabstop=4
" when indenting with '>' use 4 spaces width
set shiftwidth=4
" on pressing tab insert 4 spaces
set expandtab

" ----- plugins -----
" autoinstall vim-plug if missing
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'ackyshake/VimCompletesMe'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'tpope/vim-surround'
call plug#end()

" ----- lightline -----
set laststatus=2  "needed to make lightline work
set noshowmode  "unneeded with lightline
let g:lightline = {'colorscheme': 'simpleblack',}

" ----- markdown -----
" vim-polyglot uses vim-markdown, which has silly indent settings. This turns
" them off. This means there are no continured lists or anything, but I like
" nothing better than unpredictable.
au filetype markdown set indentexpr=

" ----- python -----
au filetype python set nu

" ----- autocomplete -----
" disable the annoying doc scratch window
set completeopt-=preview

" ----- doge -----
let g:doge_doc_standard_python = 'google'

" ----- paste -----
set pastetoggle=<F2>
