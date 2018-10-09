"=======================================
"
" Copyright:
" 	2018 delightfulagony
"
" Author:
" 	delightfulagony
" 	agony.root@protonmail.com
" 	https://github.com/delightfulagony/
"
" Original repo:
" 	https://github.com/delightfulagony/dotfiles
"
" Disclaimer:
" 	This config file is intended to work with various pieces of software
" 	specified in:
" 	https://github.com/delightfulagony/dotfiles/blob/master/README.md#Dependencies
"
" LICENSE:
" 	This file is licensed under the MIT License
" 	(https://opensource.org/licenses/MIT)
"
"=======================================

" Specify a directory for plugins 
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" wal colorscheme 
Plug 'dylanaraps/wal.vim'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" YCM-Generator
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" Initialize plugin system
call plug#end()

" Set colorscheme using pywal
colorscheme wal

syntax on "Syntax highlighting 
set mouse=a "Clicking inside the editor 
set showmatch "Matching brackets  
set autoindent "Intending next lines  
set smartindent "Indent after brackets  
set backspace=2 "Backspace working like usual  
set number "Line numbers on the side  
set relativenumber "Number relative to actual line  
