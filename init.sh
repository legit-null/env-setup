#!/usr/bin/bash

# ---------- general ----------
mkdir -p $USER/bin
mkdir -p $USER/tmp
mkdir -p $USER/ws

# ---------- nvim ----------
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
  -P $USER/bin/
chmod +x $USER/bin/nvim.appimage

mkdir -p $USER/.vim/
mkdir -p $USER/.config/nvim

cp nvim/.vimrc $USER/.vim/
cp nvim/init.vim $USER/.config/nvim/

# ---------- zsh ----------

# ---------- yapf ----------
