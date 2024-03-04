#!/bin/bash

if [ "$(pwd)" = "$HOME" ]; then
	echo "Do not use it in your home ($HOME) dir!"
	exit 1
fi
rm -r .config
mkdir -p .config
cp -r $HOME/.config/sway .config/
cp -r $HOME/.config/waybar .config/
cp -r $HOME/.config/wofi .config/
cp -r $HOME/.config/nvim .config/
cp $HOME/.config/alacritty.toml .config/
cp $HOME/.bashrc ./.bashrc

