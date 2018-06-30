call plug#begin('~/.vim/plugged')

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'digitaltoad/vim-pug'
Plug 'avakhov/vim-yaml'
Plug 'suan/vim-instant-markdown'
Plug 'ap/vim-buftabline'
Plug 'elzr/vim-json'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'
Plug 'Galooshi/vim-import-js'
Plug 'slim-template/vim-slim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'bogado/file-line'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'css', 'less', 'scss' ] }
" Plug 'jelera/vim-javascript-syntax'

call plug#end()

set wildignore+='*.swp,*/.git/**,*/coverage/**,*/log/**,*/tmp/**'
let g:ctrlp_working_path_mode= 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1

" bind K to git grep word under cursor
nnoremap K :Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>
xnoremap K :<C-U>Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:netrw_liststyle=3
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=2
syntax on
set hlsearch
" Fix backspace on initial use in insert mode
set backspace=indent,eol,start

" Remove trailing whitespace on save
autocmd BufWritePre * if &ft!='markdown'|%s/\s\+$//e|endif

set hidden
let g:buftabline_numbers=1
"not sure if these two actually do anything:
let g:buftabline_indicators='on'
let g:buftabline_separators='on'
" Highlight current line automatically
set cursorline
hi CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=DarkGray guifg=NONE

"Highlight current column automatically - useful with space-delimited
"languages.
set cursorcolumn
"Highlight overflow column
set colorcolumn=80
" highlight OverLength ctermbg=DarkGray ctermfg=NONE guibg=#592929
" match OverLength /\%81v.\+/

" starts vim in relative numbering mode
set number
set relativenumber

" Code Folding for javascript
"syntax region foldBraces start=/{/ end=/}/ skip=/"\|'\|`/ transparent fold keepend extend
" setlocal foldmethod=syntax
" setlocal foldlevel=99
" setlocal foldmethod=indent
au FileType javascript :set suffixesadd=.jsx,.js,.json
" au FileType ruby :set suffixesadd=.rb
set path=.,path/to/alias/root,node_nodules
set suffixesadd=.js,.jsx
set regexpengine=2 " use new engine

filetype plugin on
