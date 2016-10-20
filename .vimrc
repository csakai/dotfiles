call plug#begin('~/.vim/plugged')

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'digitaltoad/vim-pug'
Plug 'avakhov/vim-yaml'
Plug 'suan/vim-instant-markdown'
Plug 'ap/vim-buftabline'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'elzr/vim-json'
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'

call plug#end()

let g:netrw_liststyle=3
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4
syntax on
set hlsearch
" Fix backspace on initial use in insert mode
set backspace=indent,eol,start

" Remove trailing whitespace on save TODO: filter out md files from this
autocmd BufWritePre * %s/\s\+$//e

" Highlight current line automatically
set cursorline
hi CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=DarkGray guifg=NONE

" Allow easy buffer shifting
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" for use with jeffkreeftmeijer/vim-numbertoggle
let g:NumberToggleTrigger="<C-L>"
" starts vim in relative numbering mode
set relativenumber

" Code Folding for javascript
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldmethod=syntax
setlocal foldlevel=99
