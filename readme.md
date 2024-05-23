## About

My custom neovim config in `~/.config/nvim`

## Install some additional system tools

On Debian 12 'Bookworm' :

```bash
sudo apt -y install ripgrep black nodejs cargo ruby-dev libyaml-dev

npm -g install --save-dev --save-exact prettier
test -f ~/.prettierrc || echo '{}' > ~/.prettierrc
touch ~/.prettierignore
```

## Install some additional fonts

On Debian 12 'Bookworm' :

```bash
#!/bin/bash
sudo apt -y install fontconfig
curl -L \
  https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip \
  -o /tmp/Meslo.zip
mkdir -p ~/.local/share/fonts
unzip /tmp/Meslo.zip -d ~/.local/share/fonts
fc-cache -fv
```

## Plugins

- nvim-tree/nvim-tree.lua, a file explorer for neovim
- folke/which-key.nvim, displays a popup with possible key bindings of the command you started typing
- nvim-telescope/telescope.vim, a fuzzy finder
- (...)

and their requirements.

## Colorscheme

projekt0n/github-nvim-theme, light mode
