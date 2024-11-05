syntax on
filetype plugin on

colorscheme onedark
let mapleader = " " 
let maplocalleader = " "

""let g:vimtex_view_general_viewer = 'okular'
" Insert mode
ino jk <ESC>
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

" Normal mode
nnoremap <leader><leader> :nohlsearch<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
noremap! <C-?> <C-h>

" Visual mode"
vmap n <ESC>
vmap < <gv
vmap > >gv

" Diverse
set clipboard=unnamed
set backspace=indent,eol,start
set number

" vim plug
call plug#begin('~/.vim/plugged')

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'lervag/vimtex'
Plug 'preservim/nerdcommenter'

call plug#end()

" Vim-tex
let g:vimtex_view_method='skim'
let g:vimtex_compiler_latexmk = {
      \ 'build_dir' : '',
      \ 'callback' : 1,
      \ 'continuous' : 1,
      \ 'executable' : 'latexmk',
      \ 'hooks' : [],
      \ 'options' : [
      \   '-verbose',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \ ],
      \}
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

"Enable plugins and load plugin for the detected file type.
filetype plugin on

"Load an indent file for the detected file type.
filetype indent on

" Show matching words during a search.
set showmatch

"Use highlighting when doing a search.
set hlsearch

" Ignore capital letters during search.
set ignorecase

"Override the ignorecase option if searching for capital letters.
"This will allow you to search specifically for capital letters.
set smartcase

" While searching though a file incrementally highlight matching characters as
" you type.
set incsearch


" Run python with shortcut"
autocmd FileType python map <buffer> <C-k> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-k> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>)'')''

"Moving lines"
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv
