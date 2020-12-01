#!/usr/bin/bash

# ---------- general ----------
mkdir -p $HOME/bin
mkdir -p $HOME/tmp
mkdir -p $HOME/ws

# ---------- nvim ----------
echo "begin nvim setup..."
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
  -O $HOME/bin/nvim.appimage
chmod +x $HOME/bin/nvim.appimage

mkdir -p $HOME/.vim/
mkdir -p $HOME/.config/nvim

cp nvim/vimrc $HOME/.vim/
cp nvim/init.vim $HOME/.config/nvim/

ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "done nvim setup."

# ---------- zsh ----------

# ---------- yapf ----------
