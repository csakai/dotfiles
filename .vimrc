let g:instant_markdown_slow = 1
call plug#begin('~/.vim/plugged')

Plug 'ConradIrwin/vim-bracketed-paste'
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
Plug 'pedrohdz/vim-yaml-folds'
Plug 'Galooshi/vim-import-js'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'bogado/file-line'
Plug 'tpope/vim-unimpaired'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-commentary'
Plug 'haya14busa/is.vim'
Plug 'osyo-manga/vim-anzu'
Plug 'osyo-manga/vim-over'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'pbrisbin/vim-mkdir'

call plug#end()

let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_flow = 1

" for standard projects:
let g:ale_linters = {
\   'javascript': ['standard']
\}

let g:ale_fixers = {
\    'javascript': ['standard']
\}
" for eslint projects:
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tsserver', 'tslint'],
" \   'vue': ['eslint']
" \}

" let g:ale_fixers = {
" \    'javascript': ['eslint'],
" \    'vue': ['eslint'],
" \}

let g:ale_fix_on_save = 0

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" tsuquyomi show function signature in preview
autocmd FileType typescript setlocal completeopt+=menu,preview

" correct indentation for yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

let g:jsx_ext_required = 0

set wildignore+='*.swp,*/.git/**,*/coverage/**,*/log/**,*/tmp/**'
let g:ctrlp_working_path_mode= 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" bind K to git grep word under cursor
nnoremap K :Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>
xnoremap K :<C-U>Ggrep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"vim-anzu shortcuts
map n <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
map N <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
nmap * <Plug>(is-nohl)<Plug>(anzu-star-with-echo)
nmap # <Plug>(is-nohl)<Plug>(anzu-sharp-with-echo)
set incsearch
set hlsearch

let g:netrw_liststyle=3
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=2
syntax on
" Fix backspace on initial use in insert mode
set backspace=indent,eol,start

" Remove trailing whitespace on save
autocmd BufWritePre * if &ft!='markdown'|%s/\s\+$//e|endif

set hidden
let g:buftabline_numbers=1
"not sure if these two actually do anything:
let g:buftabline_indicators='on'
let g:buftabline_separators='on'

colorscheme slate
"Highlight characters past 80 columns
highlight OverLength ctermbg=White ctermfg=Black
match OverLength /\%81v.\+/

" starts vim in relative numbering mode
set number
set relativenumber

set clipboard=unnamed

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
