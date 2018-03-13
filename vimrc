"General options {{{

set nocompatible
syntax enable
set shellslash
set encoding=utf-8
" }}}

"Visual improvements {{{

set number
set expandtab
set tabstop=4
set softtabstop=4
set wildmenu
set guioptions-=T " No toolbar

if has('win32') || has ('win64')
        set guifont=SauceCodePro_NF:h11:cANSI:qDRAFT
else
        set guifont=Fira\ Code\ Regular\ 14
endif

set cursorline
filetype indent on
set lazyredraw
set showmatch
nnoremap gV `[v`]
let mapleader = ','

if (has("termguicolors"))
  set termguicolors
endif

" }}}

"Searching {{{

set incsearch
set hlsearch
nnoremap <Leader><Space> :nohlsearch<CR>
" }}}

"Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" }}}

"Key bindings {{{

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
" }}}

" Backups & Undos {{{

if has('win32') || has ('win64')
        let $VIMHOME = $HOME."/vimfiles"
else
        let $VIMHOME = $HOME."/.vim"
endif

set backup
set writebackup
set backupdir=$VIMHOME/tmp
set undofile
set undodir=$VIMHOME/undo
set directory=$VIMHOME/tmp
" }}}

" Autocommands {{{

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md :call <SID>StripTrailingWhitespaces()
augroup END
" }}}

" Custom Functions {{{

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}

" Plugins {{{


source $VIMHOME/plugin_list
source $VIMHOME/plugin_conf
" }}}

"Colors {{{

colorscheme tender
" }}}

set modelines=1
" vim:foldmethod=marker:foldlevel=0
