set nocompatible
set nu
syntax on
set cursorline
set ruler
set magic
set shiftwidth=4
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set nobackup
set smarttab
set autoindent
set smartindent
let g:solarized_termcolors=256
let mapleader = " "
filetype on
filetype plugin on
filetype indent on

set incsearch
set hlsearch

set encoding=utf-8

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'


call plug#end()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax enable
set background=dark
colorscheme solarized

let g:airline_theme='solarized'

nmap <leader>t :TagbarToggle<CR>
nmap <leader>f :Files<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>b :buffer 

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

