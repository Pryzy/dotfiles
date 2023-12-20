#!/bin/bash

ln ./gitconfig ~/.gitconfig

# Install Tmux
mkdir -p "$XDG_CONFIG_HOME/tmux"
ln "./.tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
