return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*", -- or branch = "dev", to use the latest commit
  config = function()
    require("screenkey").setup({
      win_opts = {
        width = 80,
      },
      compress_after = 10,
      clear_after = 10,
    })
  end,
}
