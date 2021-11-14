"---------------------------------------
" Plugins
"---------------------------------------

call plug#begin()

Plug 'cocopon/iceberg.vim' 

Plug 'jiangmiao/auto-pairs'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'vim-jp/vimdoc-ja'

Plug 'prettier/vim-prettier'

Plug 'alvan/vim-closetag'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'


Plug 'tpope/vim-commentary'

Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_semantic_enabled = 1

let g:lsp_diagnostics_float_cursor = 1

nnoremap gh :LspHover<CR>


" vim-prettier
nmap <Leader>cf <Plug>(Prettier)
nnoremap cf ""

"---------------------------------------
" Basic Settings
"---------------------------------------

set background=dark
set encoding=utf-8
set autoread
set autoindent
set smartindent

set expandtab
set tabstop=2
set shiftwidth=2

syntax on
set number
set cursorline
set list
set listchars=tab:>-,eol:¬,trail:-,extends:»,precedes:«

set laststatus=2
set noshowmode

set hlsearch

" leader
let mapleader = " "

:inoremap jk <ESC>
:nmap gr gT
:nmap <TAB>l gt
:nmap <TAB>h gT

set wildmode=list,full
set wildmenu

set history=200

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"---------------------------------------
" Color Scheme
"---------------------------------------

" listchars color
autocmd ColorScheme * highlight NonText ctermfg=238
autocmd ColorScheme * highlight SpecialText ctermfg=238

" theme
colorscheme iceberg


let g:lightline = {
		\ 'colorscheme': 'wombat',
		\ }

" qiita.com/ka_/items/dad955fe7423318b7dae
call system('type ibus')
if v:shell_error == 0
	inoremap <Esc> <Esc>:call system('ibus engine "xkb:us::eng"')<CR>
endif

