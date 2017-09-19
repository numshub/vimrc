"General options

set nocompatible
syntax enable

"Visual improvements

set number
set expandtab
set tabstop=4
set softtabstop=4
set wildmenu
set guioptions-=T " No toolbar

"Key bindings

let mapleader = ','
nnoremap <Leader>ve :edit $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
nnoremap j gj
nnoremap k gk
nnoremap ü <C-]>  # Reasonable for German keyboard
let backspace='indent,eol,start'

" Backups & Undos
set backup
set writebackup
set backupdir=~/.tmp
set undofile
set undodir=~/.undo

" Autocommands

" Plugins

source ~/.vim/plugin_list
source ~/.vim/plugin_conf

"Colors

colorscheme badwolf
