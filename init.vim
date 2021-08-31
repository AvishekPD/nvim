" Calling vim plug 
source $HOME/.config/nvim/pluglist.vim

"" Config File
source $HOME/.config/nvim/plug-config/coc.vim 
source $HOME/.config/nvim/plug-config/coc-explorer.vim
source $HOME/.config/nvim/plug-config/tokyonight.vim

"" User settings

set nocompatible
set termguicolors

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
nmap <C-Tab> :tabn

