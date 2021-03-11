# vimrc

## Installation

```
cd ~
git clone https://github.com/schu/vimrc.git .vim
cd .vim
git submodule update --init
cd ~
echo ":so ~/.vim/vimrc" >> .vimrc
```

## Add plugins

```
cd ~/.vim
git submodule add SRC bundle/DST
```

## Remove plugins

```
git submodule deinit bundle/DST
rm -rf .git/modules/bundle/DST
git rm bundle/DST
```
