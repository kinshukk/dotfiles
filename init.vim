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

call plug#end()


" global variables
let g:airline_theme="onedark"
" YCM config to use python3
let g:loaded_python3_provider = 1
let g:python3_host_prog = '/usr/bin/env python3'


" internal settings
set number
set showmatch
set wrap
set autoindent
set shiftwidth=4
set tabstop=1

" how many commands to remember
set history=100

set incsearch

"set listchars=tab:▸\ ,eol:¬
"set listchars=tab: \ ,eol:¬
"set list

set ignorecase

syntax enable

colorscheme xcodedark
