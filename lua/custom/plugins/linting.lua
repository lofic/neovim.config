return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "pylint" },
      ruby = { "rubocop" },
    }

    local lint = false

    local toggle_lint = function()
      if lint == true then
        lint = false
        vim.diagnostic.reset(nil, 0)
      else
        lint = true
        require("lint").try_lint()
      end
    end

    vim.keymap.set({ "n" }, "<leader>l", toggle_lint, { noremap = true, desc = "toggle lint", silent = false })
  end,
}
