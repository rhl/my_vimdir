filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" enable everything vim has to offer :)
set nocompatible
set modelines=0

set encoding=utf-8

" force reload filetype for pathogen use.
filetype off
filetype plugin indent on
call pathogen#runtime_append_all_bundles()


" only dark bg in terminals
if !has("gui_running")
    set background=dark
    set mouse=
end

syntax on

" death to hard tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" don't unindent # comments
inoremap # X#

" leader
let mapleader=","

"searching/moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" remove search highlight
nnoremap <leader><space> :noh<cr>

" move around brackets with TAB
nnoremap <tab> %
vnoremap <tab> %

" switch between two windows with <leader>+"."
nnoremap <leader>. w

" move to windows using <leader>+direction
nnoremap <leader>h h
nnoremap <leader>l l
nnoremap <leader>j j
nnoremap <leader>k k

" long lines
set wrap

" make up and down go by screen lines instead of file lines
nnoremap j gj
nnoremap k gk

" disable cursor keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" make ; behave as :
nnoremap ; :
vnoremap ; :

" map F1 to ESC :)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set guifont=Terminus\ 10

" load session file if present in the current dir
" and vim was invoked w/o args.
if argc() == 0
    execute 'silent! source Session.vim'
end

" NERDTree mappings
nnoremap <F3> :NERDTree<cr>
nnoremap <F4> :NERDTreeMirror<cr>
nnoremap <leader><F3> :NERDTreeClose<cr>

colorscheme torte

" turn off all bells, visual or audible
set vb t_vb=

" simplify edit/reload vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>rv :so $MYVIMRC<cr>

" open / close tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
