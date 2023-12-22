#!/bin/bash

ln ./gitconfig ~/.gitconfig

# Install Tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -s $(pwd)/.tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf

# Install Neovim
ln -s $(pwd)/nvim $XDG_CONFIG_HOME/nvim
