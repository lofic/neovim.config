return {
  {
    "lofic/dummyvisincr.nvim",
    event = "VeryLazy",
    config = function()
      vim.api.nvim_create_user_command("I", function()
        require("dummyvisincr").incr()
      end, { range = true, desc = "" })
    end,
  },
}
