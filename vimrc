" disable vi compatibility
set nocompatible


" enable pathogen plugin before we do anything else
call pathogen#infect()

" big history
set history=1000

" encodings
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

" configure status line
set ruler laststatus=2 number

" search configuration
set hlsearch incsearch ignorecase smartcase magic

" indentation options
set autoindent smartindent

" tab depth and expansion option defaults
set expandtab tabstop=4 shiftwidth=4 softtabstop=4

" set textwidth=78

set autoread autowrite nobackup ttyfast viminfo='20,\"500
set backspace=indent,eol,start notimeout clipboard=

" allow reading of .vimrc in current working directory
set exrc

" navigation - keep 5 lines above or below cursor on screen
set scrolloff=5

" show matching bracket if it's on the screen
set showmatch

" file completion 
set wildmenu
set wildmode=list:longest

" don't kill buffers
set hidden

syntax enable
syntax on
syntax sync fromstart

" clear highlighted searches
noremap <C-l> :nohls<CR><C-l>
noremap! <C-l> <Esc>:nohls<CR><C-l>a

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Use ack for grepping
set grepprg=ack

" Code folding
set foldenable
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag
function! SimpleFoldText() " {
    return getline(v:foldstart).' '
endfunction " }
set foldtext=SimpleFoldText()

" When vimrc is edited, reload it
" if you install this somewhere other than ~/.vim, you'll need to change the
" last argument
autocmd! bufwritepost vimrc source ~/.vim/vimrc
