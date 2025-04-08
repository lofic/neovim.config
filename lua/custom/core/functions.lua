function ToggleAutopairs()
  local autopairs = require("nvim-autopairs")
  if autopairs.state.disabled then
    autopairs.enable()
  else
    autopairs.disable()
  end
end

-- copied from spaceless.nvim (https://github.com/lewis6991/spaceless.nvim)
-- and slighly simplified in comparison to the function stripWhitespace
function DeleteTrailingWhitespaces()
  -- Only do if the buffer is modifiable
  if not vim.bo.modifiable then
    return
  end

  local file_top = vim.fn.line("0")
  local file_bottom = vim.fn.line("$")

  -- Keep the cursor position and these marks:
  local original_cursor = vim.fn.getcurpos()
  local first_changed = vim.fn.getpos("'[")
  local last_changed = vim.fn.getpos("']")

  vim.cmd("silent exe " .. file_top .. " ',' " .. file_bottom .. " 's/\\v\\s+$//e'")

  vim.fn.setpos("']", last_changed)
  vim.fn.setpos("'[", first_changed)
  vim.fn.setpos(".", original_cursor)
end

function DTW()
  DeleteTrailingWhitespaces()
end
