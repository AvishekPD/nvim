"" using vim-plug
call plug#begin('~/plugged')

" Install tokyovim theme
Plug 'ghifarit53/tokyonight-vim'

" Vim Smoothie
Plug 'psliwka/vim-smoothie'

" Auto code completaion engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Bunch of vim colorscheme
Plug 'flazz/vim-colorschemes'

" Term split in nvim 
Plug 'vimlab/split-term.vim'

" Nerd tree file explorer
Plug 'preservim/nerdtree'

call plug#end()

set termguicolors

"" Tokyo-Night 
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1

"" Deoplete Search engine 
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})

" maximum candidate window length
call deoplete#custom#source('_', 'max_menu_width', 80)

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Nerd tree auto start when no File specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" User settings
colorscheme tokyonight
set cursorline
set guicursor= 
set number 
set relativenumber
set nostartofline
set expandtab 
set tabstop=4
set shiftwidth=4
syntax on 
filetype indent plugin on 

" My keymaps 
nmap  <C-j> <C-d>
nmap <C-k> <C-u>
