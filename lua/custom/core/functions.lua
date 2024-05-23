function toggle_autopairs()
  local autopairs = require("nvim-autopairs")
  if autopairs.state.disabled then
    autopairs.enable()
  else
    autopairs.disable()
  end
end
