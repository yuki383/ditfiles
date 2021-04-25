"---------------------------------------
" Plugins
"---------------------------------------

call plug#begin()

Plug 'cocopon/iceberg.vim' 

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'vim-jp/vimdoc-ja'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:lsp_diagnostics_float_cursor = 1

"---------------------------------------
" Basic Settings
"---------------------------------------

set encoding=utf-8
set autoread
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

syntax on
set number
set cursorline
set list
set listchars=tab:>-,eol:¬,trail:-,extends:»,precedes:«

set laststatus=2
set noshowmode

" leader
let mapleader = " "

:inoremap jk <ESC>
:nmap gr gT
:nmap <TAB>l gt
:nmap <TAB>h gT


"---------------------------------------
" Color Scheme
"---------------------------------------

" listchars color
autocmd ColorScheme * highlight NonText ctermfg=238
autocmd ColorScheme * highlight SpecialText ctermfg=238

" theme
colorscheme iceberg

