" ----- basics -----
set ignorecase
syntax on
set nonumber

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

" ----- search -----
set hlsearch
nnoremap <silent> <esc> :nohlsearch<cr><esc>
hi Search ctermbg=DarkBlue
hi Search ctermfg=White

" ----- spell -----
highlight clear SpellBad
highlight SpellBad cterm=undercurl ctermfg=9
highlight clear SpellCap
highlight SpellCap cterm=underline ctermfg=11
highlight clear SpellLocal
highlight SpellLocal cterm=underline ctermfg=9
highlight clear SpellRare
highlight SpellRare cterm=underline ctermfg=9

" ----- paste -----
set pastetoggle=<F2>

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
Plug 'tpope/vim-repeat'
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

" ----- text/markdown -----
au filetype markdown set nonumber norelativenumber
au filetype text set nonumber norelativenumber
au filetype markdown set spell
au filetype text set spell

" ----- autocomplete -----
" disable the annoying doc scratch window
set completeopt-=preview

" ----- doge -----
let g:doge_doc_standard_python = 'google'

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

# avoid starting in replace mode (https://github.com/vim/vim/issues/6365)
set ambw=double
