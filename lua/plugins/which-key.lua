-- preview cmds before they happen
return {
	"folke/which-key.nvim",
	lazy = true,
	event = "VeryLazy",
	opts = {
		delay = 0,
		icons = {
			mappings = true,
			keys = {},
		},
		spec = {
			{ '<leader>s', group = '[s]earch' },
		},
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
