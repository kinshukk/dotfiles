" install vim-plug if not already
" (from https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation)
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" load plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'arzg/vim-colors-xcode'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'posva/vim-vue'
" Plug 'vim-syntastic/syntastic'

call plug#end()

" internal settings
set number
set showmatch
set wrap
set autoindent
set shiftwidth=4
set tabstop=1
set expandtab

" how many commands to remember
set history=100

set incsearch

set ignorecase

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

syntax enable

colorscheme xcodedark

" global variables

let g:airline_theme="onedark"

" YCM config to use python3
let g:loaded_python3_provider = 1
let g:python3_host_prog = '/usr/bin/env python3'

" indentLine config
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_char_list = ['|', '¦']
"almost invisible grey
let g:indentLine_color_term = 237
let g:indentLine_concealcursor = "nv"
" because it renders quotes as indent lines for some reason
let g:indentLine_fileTypeExclude = ["json"]

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

set wildignore+=*/.git/*
set wildignore+=*/node_modules/*

let mapleader = ","

filetype plugin on

" compile and exec cpp files for CP
map <F8> :w <CR> :!g++ % && ./a.out <CR>

autocmd BufNewFile */competitive_programming/*.cpp 0r ~/.config/nvim/templates/CP.cpp

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
