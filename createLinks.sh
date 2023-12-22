#!/bin/bash

ln ./gitconfig ~/.gitconfig

# Install Tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -s $(pwd)/.tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

# Install Neovim
# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
ln -s $(pwd)/nvim $XDG_CONFIG_HOME/nvim
