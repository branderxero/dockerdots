"           ██
"          ░░
"  ██    ██ ██ ██████████
" ░██   ░██░██░░██░░██░░██
" ░░██ ░██ ░██ ░██ ░██ ░██
"  ░░████  ░██ ░██ ░██ ░██
"   ░░██   ░██ ███ ░██ ░██
"    ░░    ░░ ░░░  ░░  ░░

" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible
 
" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo

" make backspace behave in a sane manner
set backspace=indent,eol,start
 
" syntax highlighting and colors
syntax on
colorscheme monokai
filetype plugin indent on
set t_Co=256

" stop unnecessary rendering
set lazyredraw

" show line numbers
set number
 
" enable file type detection and do language-dependent indenting
filetype plugin indent on

" let mapleader=","
vnoremap <silent> <leader>y :w !xsel -i -b<CR>
nnoremap <silent> <leader>y V:w !xsel -i -b<CR>
nnoremap <silent> <leader>p :silent :r !xsel -o -b<CR>

" remap code completion to ^space
inoremap <Nul> <C-x><C-o> 
