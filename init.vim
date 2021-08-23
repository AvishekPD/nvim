" Calling vim plug 
call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim' " Install tokyovim theme
Plug 'psliwka/vim-smoothie' " Vim Smoothie
Plug 'vimlab/split-term.vim' " Term split in nvim 
Plug 'sheerun/vim-polyglot' " Add support for various language
Plug 'vifm/vifm.vim' " Vin File manager
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquer of Completion 

call plug#end()

set nocompatible
set termguicolors

"" Tokyo-Night 
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1

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
nmap <Space> :Vifm .<CR>
nmap <C-Tab> :tabn

"" Config File
source $HOME/.config/nvim/plug-config/coc.vim 
