return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
	  delay = 0,
	  icons = {
		  mappings = true,
		  keys = {},
	  },
--       spec = {
--         { '<leader>s', group = '[S]earch' },
--         { '<leader>t', group = '[T]oggle' },
--         { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
--       },
  },
  keys = {
    -- {
    --   "<leader>?",
    --   function()
    --     require("which-key").show({ global = false })
    --   end,
    --   desc = "Buffer Local Keymaps (which-key)",
    -- },
  },
}
