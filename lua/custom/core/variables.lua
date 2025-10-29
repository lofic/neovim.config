-- lua vim.print(vim.g.foo)
vim.api.nvim_set_var("foo", "bar")

-- vim.g.diagnostic_signs
vim.api.nvim_set_var("diagnostic_signs", {
  text = {
    [vim.diagnostic.severity.ERROR] = " ",
    [vim.diagnostic.severity.WARN] = " ",
    [vim.diagnostic.severity.INFO] = " ",
    [vim.diagnostic.severity.HINT] = "󰌵",
  },
})
