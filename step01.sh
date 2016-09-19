#!/bin/sh

sudo apt-get autoremove -y
sudo apt-get install checkinstall -y
sudo apt-get install tmux synaptic git -y
sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-common vim-gui-common
sudo apt-get install liblua5.1-dev luajit libluajit-5.1 python-dev ruby-dev libperl-dev mercurial libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev -y

sudo mkdir /usr/include/lua5.1/include
sudo ln -s /usr/include/luajit-2.0 /usr/include/lua5.1/include
 
cd ~
git clone https://github.com/vim/vim.git
cd vim/src
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \
            --enable-fail-if-missing \
            --with-lua-prefix=/usr/include/lua5.1 \
            --enable-cscope 
make 

sudo make install

cd ..
sudo mkdir /usr/share/vim
sudo mkdir /usr/share/vim/vim80/
sudo cp -fr runtime/* /usr/share/vim/vim80/
