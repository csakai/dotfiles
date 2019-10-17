let g:instant_markdown_slow = 1
call plug#begin('~/.vim/plugged')

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'avakhov/vim-yaml'
Plug 'suan/vim-instant-markdown'
Plug 'ap/vim-buftabline'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'amadeus/vim-xml'
Plug 'amadeus/vim-jsx'
Plug 'leshill/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Quramy/tsuquyomi'
Plug 'posva/vim-vue'
Plug 'Galooshi/vim-import-js'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'bogado/file-line'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'

call plug#end()

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\   'vue': ['eslint']
\}

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'vue': ['eslint'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
let g:ale_fix_on_save = 1

let g:jsx_ext_required = 0

set wildignore+='*.swp,*/.git/**,*/coverage/**,*/log/**,*/tmp/**'
let g:ctrlp_working_path_mode= 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1

" bind K to git grep word under cursor
nnoremap K :Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>
xnoremap K :<C-U>Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

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
" set cursorline
" hi CursorLine cterm=NONE ctermbg=DarkGray ctermfg=NONE guibg=DarkGray guifg=NONE

"Highlight current column automatically - useful with space-delimited
"languages.
" set cursorcolumn
"Highlight overflow column
set colorcolumn=80
" highlight OverLength ctermbg=DarkGray ctermfg=NONE guibg=#592929
" match OverLength /\%81v.\+/

" starts vim in relative numbering mode
set number
set relativenumber

" Code Folding for javascript, disable if things get too slow
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

au FileType javascript :set suffixesadd=.jsx,.js,.json
" au FileType ruby :set suffixesadd=.rb
set path=.,path/to/alias/root,node_nodules
set suffixesadd=.js,.jsx
set regexpengine=2 " use new engine

set backupcopy=yes " recompilation for webpack thing

filetype plugin on
