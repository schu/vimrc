
Installation
============

cd ~
git clone https://github.com/schu/vimrc.git .vim
cd .vim
git submodule update --init
cd ~
echo ":so ~/.vim/vimrc" >> .vimrc

Add plugin
==========

cd ~/.vim
git submodule add SRC bundle/DST
