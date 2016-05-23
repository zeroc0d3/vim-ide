#!/bin/sh

git clone https://github.com/zenorocha/dracula-theme.git
cp dracula-theme/vim/colors/dracula.vim ~/.vim/bundle/vim-colors/colors/dracula.vim

git clone https://github.com/blueshirts/darcula.git
cp darcula/colors/darcula.vim ~/.vim/bundle/vim-colors/colors/darcula.vim 

cp 01_vimrc.local.txt > ~/.vimrc.local 
cp 02_gvimrc.local.txt > ~/.gvimrc.local
