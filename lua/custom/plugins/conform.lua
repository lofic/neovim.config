return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        ruby = { "rubocop" },
      },
      format_on_save = function()
        -- no format on save :
        return
        -- format on save :
        -- return { lsp_fallback = true, async = false, timeout_ms = 1000 }
      end,
    })
  end,
}
