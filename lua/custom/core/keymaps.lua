vim.g.mapleader = ","
vim.keymap.set("n", "<Leader>n", ":setlocal number!<CR>", { desc = "toggle line numbers", silent = true })
vim.keymap.set("n", "<Leader>p", ":set paste<cr>i", { desc = "set paste mode", silent = true })
vim.keymap.set("n", "<Leader>r", ":redraw!<cr>", { desc = "refresh the screen", silent = true })

vim.keymap.set("i", ";;", "<Esc>", { desc = "faster escape - type it fast", silent = true })

-- moves
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", { desc = "do not move around with arrows", silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", { desc = "do not move around with arrows", silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", { desc = "do not move around with arrows", silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", { desc = "do not move around with arrows", silent = true })

vim.keymap.set({ "n", "v" }, "k", "gk", { desc = "move up one DISPLAYED line, ignoring line wrap", silent = true })
vim.keymap.set({ "n", "v" }, "j", "gj", { desc = "move down one DISPLAYED line, ignoring line wrap", silent = true })

-- buffers
vim.keymap.set({ "n" }, "<tab>", ":bnext<CR>", { desc = "move to the next buffer", silent = true })
vim.keymap.set({ "n" }, "<leader><leader>", ":bnext<CR>", { desc = "move to the next buffer", silent = true })

--indent guides
vim.keymap.set({ "n" }, "<Leader>i", ":IBLToggle<cr>", { desc = "toggle indent guides on/off", silent = false })


-- autoclose/autopairs toggle off/on
vim.keymap.set(
  { "n" },
  "<Leader>a",
  ":lua toggle_autopairs()<cr>",
  { desc = "toggle autopairs off/on", silent = false }
)

-- spelling
vim.keymap.set({ "n" }, "<Leader>so", ":set spell<cr>", { desc = "toggle spell on", silent = false })
vim.keymap.set({ "n" }, "<Leader>sq", ":set nospell<cr>", { desc = "toggle spell off", silent = false })
vim.keymap.set({ "n" }, "<Leader>se", ":set spelllang=en<cr>", { desc = "spell en", silent = false })
vim.keymap.set({ "n" }, "<Leader>sf", ":set spelllang=fr<cr>", { desc = "spell fr", silent = false })
-- by default you can still use z= for spelling suggestions under the cursor
vim.keymap.set({ "n" }, "<leader>ss", function()
  require("telescope.builtin").spell_suggest(require("telescope.themes").get_cursor({}))
end, { desc = "Spelling Suggestions with a Telescope list" })

-- conform format
vim.keymap.set({ "n", "v" }, "<leader>c", function()
  require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 3000 })
end, { desc = "conform format (on range in visual mode)", silent = false })

-- set the filetype to yaml.ansible
vim.keymap.set(
  { "n" },
  "<Leader>y",
  ":set ft=yaml.ansible<cr>",
  { desc = "set the filetype to yaml.ansible", silent = false }
)

-- Lint LSP server toggle off/on
-- cf https://samuellawrentz.com/hacks/neovim/disable-annoying-eslint-lsp-server-and-hide-virtual-text/
local isLspDiagnosticsVisible = true
vim.keymap.set("n", "<leader>k", function()
  isLspDiagnosticsVisible = not isLspDiagnosticsVisible
  vim.diagnostic.config({
    virtual_text = isLspDiagnosticsVisible,
    signs = isLspDiagnosticsVisible,
    underline = isLspDiagnosticsVisible,
  })
end, { desc = "LSP server lint toggle off/on", silent = false })

-- caffeine
vim.keymap.set({"n", "i"}, "<F15>", "<Nop>")
