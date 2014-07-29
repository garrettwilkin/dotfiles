syntax on
set t_Co=256
color mango
set nocompatible   " be iMproved
filetype off       " required!

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

"Plugin 'Floobits'

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

" syntax highlighting
set t_Co=256
set background=dark " you can use 'dark' or 'light' as your background
syntax on
color mango

set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set cursorline
