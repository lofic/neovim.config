## About

My custom neovim config in `~/.config/nvim`

## Install some additional system and dev tools

On Debian 12 'Bookworm' :

```bash
sudo apt -y install black cargo libyaml-dev nodejs ripgrep ruby-dev shellcheck

touch ~/.npmrc
grep -q prefix ~/.npmrc || echo "prefix=${HOME}/.npm-packages" >> ~/.npmrc
npm -g install --save-dev --save-exact prettier
test -f ~/.prettierrc || echo '{}' > ~/.prettierrc
touch ~/.prettierignore

gem install --no-document --user-install puppet puppet-lint
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

- windwp/nvim-autopairs : insert brackets, parens, quotes in pairs
- hrsh7th/nvim-cmp : full support for LSP completion related capabilities
- stevearc/conform.nvim : lightweight yet powerful formatter
- stevearc/dressing.nvim : improves the default vim.ui interfaces
- tpope/vim-fugitive : git operations within vim
- lukas-reineke/indent-blankline.nvim : indentation guides, detection of mixed indentation
- mfussenegger/nvim-lint : an asynchronous linter plugin complementary to the built-in LSP support
- nvim-lualine/lualine.nvim : fancy and blazing fast status line
- rodjek/vim-puppet : formatting, syntax highlighting, automatic resource attributes alignment, etc. for puppet
- kylechui/nvim-surround : add/change/delete surrounding delimiter pairs with ease
- nvim-telescope/telescope.vim : a fuzzy finder
- nvim-tree/nvim-tree.lua : a file explorer for neovim
- nvim-treesitter/nvim-treesitter : configuration and abstraction layer for treesitter, a source code incremental parser updating the parse tree while the code is edited in real time; used in particular for syntax highlighting
- cappyzawa/trim.nvim : trim trailing whitespaces and lines
- folke/trouble.nvim : pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing
- folke/which-key.nvim : displays a popup with possible key bindings of the command you started typing
- (...)

and their requirements.

Plugins related to LSP features :

- neovim/nvim-lspconfig : quickstart configs for Nvim LSP
- williamboman/mason.nvim : easily install and manage LSP servers, DAP servers, linters and formatters

## Colorscheme

projekt0n/github-nvim-theme, light mode (yes, I'm one one those heretics who like light backgrounds and themes)
