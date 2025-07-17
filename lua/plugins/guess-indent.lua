return {
	'NMAC427/guess-indent.nvim',
	lazy = true,
	event = { 'BufReadPre', 'BufNewFile' },
	opts = {
		filetype_exclude = {
			"tutor",
			"dashboard",
			"markdown",
			"gitcommit",
			"help",
		},
		buftype_exclude = {
			"help",
			"nofile",
			"terminal",
			"prompt",
			"quickfix",
		},
	},
}
