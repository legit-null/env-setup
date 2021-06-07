#!/bin/bash

# ---------- gdb-dashboard ----------
pip install pygments

# ---------- nvim ----------
# make sure conda is setup
pip install neovim
pip install clang-format

$HOME/usr/bin/nvim +PluginInstall +qall
$HOME/usr/bin/nvim \
  -c "CocInstall coc-explorer" \
  -c "CocInstall coc-fzf-preview" \
  -c "CocInstall coc-clangd"
  +qall


