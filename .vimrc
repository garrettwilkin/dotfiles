set nocompatible   " be iMproved
filetype off       " required!

" Use Tim Pope's pathogen
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vungle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Plugins here:
"
" original repos on github
Plugin 'guileen/vim-node'

" vim-scripts repos
Plugin 'L9'

" non github repos
Plugin 'git://git.wincent/com/command-t.git'
" ...
"
Plugin 'shutnik/jshint2.vim'

"Plugin 'Floobits'

filetype plugin on    " PLEASE PLEASE PLEASE
filetype plugin indent on    " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) remove of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

syntax on

set tabstop=4
set shiftwidth=4

set t_Co=256
set ruler
set background=dark

autocmd BufWritePre * :%s/\s\+$//e
