set exrc
set secure
set expandtab
set number relativenumber
set nu rnu
set rtp+=~/.fzf
set gfn=Space\ Mono\ 14
set go=aegimrLt
set tabstop=4
set shiftwidth=4
let mapleader = "\\"

syntax on
filetype plugin indent on

let g:ycm_semantic_triggers = { 'c': [ 're!.' ] }

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunnvim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'rhysd/vim-clang-format'

Plug 'ycm-core/YouCompleteMe'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

so ~/.config/nvim/binds.vim

call plug#end()
