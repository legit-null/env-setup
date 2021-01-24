#!/bin/bash

# ---------- general ----------
mkdir -p $HOME/bin
mkdir -p $HOME/tmp
mkdir -p $HOME/ws

cp misc/find.sh $HOME/ws/
echo 'set -o vi' >> $HOME/.bashrc
echo 'alias fd="sh ~/ws/find.sh"' >> $HOME/.bashrc
echo 'alias fd="sh ~/ws/find.sh"' >> $HOME/.zshrc

# ---------- conda ----------
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  -O $HOME/tmp/
sh $HOME/tmp/Miniconda3-latest-Linux-x86_64.sh

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

echo 'alias n="~/bin/nvim.appimage"' >> $HOME/.bashrc
echo 'alias vim="~/bin/nvim.appimage"' >> $HOME/.bashrc
echo 'alias vi="~/bin/nvim.appimage"' >> $HOME/.bashrc
echo 'alias n="~/bin/nvim.appimage"' >> $HOME/.zshrc
echo 'alias vim="~/bin/nvim.appimage"' >> $HOME/.zshrc
echo 'alias vi="~/bin/nvim.appimage"' >> $HOME/.zshrc

echo "done nvim setup."

# ---------- zsh ----------

# ---------- yapf ----------
