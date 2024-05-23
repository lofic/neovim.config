#!/bin/bash

sudo apt -y install fontconfig

curl -L \
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip \
  -o /tmp/Meslo.zip

mkdir -p ~/.local/share/fonts

unzip /tmp/Meslo.zip -d ~/.local/share/fonts

fc-cache -fv
