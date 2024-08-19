return {
  "Isrothy/neominimap.nvim",
  enabled = true,

  keys = {
    { "<leader>nt", "<cmd>Neominimap toggle<cr>", desc = "Toggle minimap" },
    { "<leader>no", "<cmd>Neominimap on<cr>",     desc = "Enable minimap" },
    { "<leader>nc", "<cmd>Neominimap off<cr>",    desc = "Disable minimap" },
  },

  init = function()
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36
    vim.g.neominimap = {
      auto_enable = true,
    }
  end,
}
