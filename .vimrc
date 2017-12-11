" ____________________
"    Octoberlub .vimrc
" ____________________

set nocompatible
filetype on
filetype off
syntax on
filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plugin list
Plug 'scrooloose/nerdtree'                  " File browser
Plug 'jistr/vim-nerdtree-tabs'              " One NERDTree to rule them all
Plug 'scrooloose/nerdcommenter'             " Multi-line comments
Plug 'christoomey/vim-tmux-navigator'       " Pane navigation tmux/vim
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
call plug#end()

filetype plugin indent on

" Colour scheme - oh so indecisive
syntax enable

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2

" System clipboard
set clipboard=unnamed
" Some more crucial settings

set number       " show line numbers
set nowrap
set showmatch    " show matching parenthesis
set smartcase    " search case-insensitive if everything is lower case
set hlsearch     " highlight search terms
set incsearch    " highlight search terms as you type
set title        " set the terminal title
set laststatus=2 " display the status bar (filename)
set nobackup     " don't create annoying backup files
set noswapfile   " or swap files
set expandtab    " use spaces instead of tabs
set ai           " auto indent
set si           " smart indent
set wrap         " wrap lines
set autoread     " auto reload files when externally changed
set mouse=nicr   " mouse scroll

" Rebind escape
imap jj <Esc>

" Centre the window on space & search
map <space> zz
map n nzz
map N Nzz

" Leader keys
nnoremap <leader>p :CtrlPTag<cr>           " ctrl-p current word
nnoremap <leader>h :noh<cr>                " Cancel highlight
nnoremap <leader>s :%s/\<<C-r><C-w>\>/
noremap <leader>p "0p
noremap <leader>P "0P
vnoremap <leader>p "0p
map <C-n> :NERDTreeToggle<CR>

" For those typos
cmap W w
cmap WQ wq
cmap Wq wq

" ruler
set colorcolumn=80

set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

source ~/.vimtmux
