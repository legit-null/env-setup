#!/usr/bin/bash

# ---------- general ----------
mkdir -p $HOME/bin
mkdir -p $HOME/tmp
mkdir -p $HOME/ws

# ---------- nvim ----------
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
  -P $HOME/bin/
chmod +x $HOME/bin/nvim.appimage

mkdir -p $HOME/.vim/
mkdir -p $HOME/.config/nvim

cp nvim/.vimrc $HOME/.vim/
cp nvim/init.vim $HOME/.config/nvim/

# ---------- zsh ----------

# ---------- yapf ----------
