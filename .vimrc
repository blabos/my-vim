syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set autoindent

nnoremap <silent> tt :%!perltidy -q<Enter>
vnoremap <silent> tt :!perltidy  -q<Enter>

set rtp+=~/.fzf

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'easymotion/vim-easymotion'

call plug#end()

let perl_sub_signatures = 1
