#!/bin/bash

# ---------- general ----------
mkdir -p $HOME/usr/bin
mkdir -p $HOME/usr/lib
mkdir -p $HOME/usr/share
mkdir -p $HOME/usr/man
mkdir -p $HOME/tmp
mkdir -p $HOME/ws

cp misc/find.sh $HOME/ws/

cp rc/bashrc_comm $HOME/.bashrc_comm
echo '
if [[ -r $HOME/.bashrc_comm  ]]; then
      . $HOME/.bashrc_comm
fi
' >> $HOME/.bashrc

source $HOME/.bashrc

# ---------- conda ----------
echo "begin conda setup..."

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  -O $HOME/tmp/Miniconda3-latest-Linux-x86_64.sh
bash $HOME/tmp/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
$HOME/miniconda3/bin/conda init

echo "done conda setup."

# ---------- node ----------
echo "begin node setup..."

curl -sL install-node.now.sh/lts -o $HOME/tmp/install-node.sh
bash $HOME/tmp/install-node.sh -y -P $HOME/usr

echo "done node setup."

# ---------- ripgrep ----------
echo "begin ripgrep setup..."

wget https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb \
  -O $HOME/tmp/ripgrep_12.1.1_amd64.deb
dpkg -x $HOME/tmp/ripgrep_12.1.1_amd64.deb $HOME/

echo "done ripgrep setup."

# ---------- bat ----------
echo "begin bat setup..."

wget https://github.com/sharkdp/bat/releases/download/v0.18.1/bat_0.18.1_amd64.deb \
  -O $HOME/tmp/bat_0.18.1_amd64.deb
dpkg -x $HOME/tmp/bat_0.18.1_amd64.deb $HOME/

echo "done bat setup."

# ---------- clangd ----------
echo "begin clangd setup..."

wget https://github.com/clangd/clangd/releases/download/12.0.0/clangd-linux-12.0.0.zip \
  -O $HOME/tmp/clangd-linux-12.0.0.zip
unzip $HOME/tmp/clangd-linux-12.0.0.zip -d $HOME/tmp/
mv $HOME/tmp/clangd_12.0.0/bin/* $HOME/usr/bin/
mv $HOME/tmp/clangd_12.0.0/lib/* $HOME/usr/lib/

echo "done bat setup."

# ---------- nvim ----------
echo "begin nvim setup..."

wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
  -O $HOME/usr/bin/nvim.appimage
chmod +x $HOME/usr/bin/nvim.appimage
$HOME/usr/bin/nvim.appimage --appimage-extract
mv squashfs-root/usr/bin/* $HOME/usr/bin/
mv squashfs-root/usr/lib/* $HOME/usr/lib/
mv squashfs-root/usr/share/* $HOME/usr/share/
mv squashfs-root/usr/man/* $HOME/usr/share/

mkdir -p $HOME/.vim/
mkdir -p $HOME/.config/nvim

cp nvim/vimrc $HOME/.vim/
cp nvim/init.vim $HOME/.config/nvim/

ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "done nvim setup."

# ---------- gdb-dashboard ----------
echo "begin gdb-dashboard setup..."
wget -P ~ https://git.io/.gdbinit
echo "done gdb-dashboard setup."


# ---------- zsh ----------

# ---------- yapf ----------
