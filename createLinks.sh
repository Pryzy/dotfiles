#!/bin/bash

ln -s $(pwd)/gitconfig $HOME/.gitconfig

# Install Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
mkdir -p "$HOME/.config/tmux"
ln -s $(pwd)/.tmux.conf $HOME/.config/tmux/tmux.conf

# Install Neovim
# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
ln -s $(pwd)/nvim $HOME/.config/nvim
