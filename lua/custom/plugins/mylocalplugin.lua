return {
  {
    --enabled = false,
    dir = "~/tmp/nvim/plugins/myplugin.nvim",
    event = "VeryLazy",
    --config = function()
    --  vim.api.nvim_create_user_command("I", function()
    --    require("myplugin").incr()
    --  end, { range = true, desc = "" })
    --  vim.api.nvim_create_user_command("UE", function()
    --    require("myplugin").upeven()
    --  end, { range = true, desc = "" })
    --end,
  },
}
