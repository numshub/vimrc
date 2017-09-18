"General options

set nocompatible
syntax enable

"Visual improvements

set number
set expandtab
set tabstop=4
set softtabstop=4

"Key bindings

let mapleader = ","
nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>

" Plugins

source ~/.vim/plugin_list
source ~/.vim/plugin_conf
