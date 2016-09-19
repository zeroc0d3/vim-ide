#!/bin/sh

git clone https://github.com/zenorocha/dracula-theme.git
sudo cp dracula-theme/vim/colors/dracula.vim ~/.vim/bundle/vim-colors/colors/dracula.vim

git clone https://github.com/blueshirts/darcula.git
sudo cp darcula/colors/darcula.vim ~/.vim/bundle/vim-colors/colors/darcula.vim 

sudo cp 01_vimrc.local.txt ~/.vimrc.local 
sudo cp 02_gvimrc.local.txt ~/.gvimrc.local
