#!/bin/bash
mkdir -p .config
cp -r $HOME/.config/sway .config/
cp -r $HOME/.config/waybar .config/
cp -r $HOME/.config/wofi .config/
cp -r $HOME/.config/nvim .config/
rm -rf .config/nvim/plugged
cp $HOME/.config/alacritty.toml .config/
