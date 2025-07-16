-- color scheme is here
return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			commentStyle = { italic = false },
		})
		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
