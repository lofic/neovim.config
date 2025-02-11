return {
  "cappyzawa/trim.nvim",
  event = "VeryLazy",
  config = function()
    require("trim").setup({})
  end,
}
