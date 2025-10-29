return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Create a linter which outputs nothing.
    -- Used in a custom keymap to toggle on/off the linting.
    lint.linters.dummy = {
      cmd = "true",
      stdin = true,
      args = {},
      stream = nil,
      ignore_exitcode = false,
      env = nil,
      parser = require("lint.parser").for_sarif(),
    }

    lint.linters_by_ft = {
      python = { "pylint" },
      ruby = { "rubocop" },
    }
  end,
}
