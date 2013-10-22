set nocompatible   " be iMproved
filetype off       " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc() 
" let Vungle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'guileen/vim-node'
Bundle 'goatslacker/mango.vim'

" vim-scripts repos
Bundle 'L9'

" non github repos
Bundle 'git://git.wincent/com/command-t.git'
" ...

"Bundle 'Floobits'

filetype plugin indent on    " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) remove of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" syntax highlighting
set t_Co=256
set background=dark " you can use 'dark' or 'light' as your background
syntax on
color mango

set tabstop=4
set shiftwidth=4
set expandtab
set ruler
