return {
	'echasnovski/mini.nvim',
	version = false,
	event = 'VeryLazy',
	config = function()

		-- get rid of this and get a new statusline
		local statusline = require 'mini.statusline'
		statusline.setup { use_icons = true }
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return '%2l:%-2v'
		end

	end,
}

-- mini.ai 	Extend and create a/i textobjects 	README 	Help file
-- mini.align 	Align text interactively 	README 	Help file
-- mini.comment 	Comment lines 	README 	Help file
-- mini.completion 	Completion and signature help 	README 	Help file
-- mini.keymap 	Special key mappings 	README 	Help file
-- mini.move 	Move any selection in any direction 	README 	Help file
-- mini.operators 	Text edit operators 	README 	Help file
-- mini.pairs 	Autopairs 	README 	Help file
-- mini.snippets 	Manage and expand snippets 	README 	Help file
-- mini.splitjoin 	Split and join arguments 	README 	Help file
-- mini.surround 	Surround actions 	README 	Help file
-- mini.basics 	Common configuration presets 	README 	Help file
-- mini.bracketed 	Go forward/backward with square brackets 	README 	Help file
-- mini.bufremove 	Remove buffers 	README 	Help file
-- mini.clue 	Show next key clues 	README 	Help file
-- mini.deps 	Plugin manager 	README 	Help file
-- mini.diff 	Work with diff hunks 	README 	Help file
-- mini.extra 	Extra 'mini.nvim' functionality 	README 	Help file
-- mini.files 	Navigate and manipulate file system 	README 	Help file
-- mini.git 	Git integration 	README 	Help file
-- mini.jump 	Jump to next/previous single character 	README 	Help file
-- mini.jump2d 	Jump within visible lines 	README 	Help file
-- mini.misc 	Miscellaneous functions 	README 	Help file
-- mini.pick 	Pick anything 	README 	Help file
-- mini.sessions 	Session management 	README 	Help file
-- mini.visits 	Track and reuse file system visits 	README 	Help file
-- mini.cursorword 	Autohighlight word under cursor 	README 	Help file
-- mini.hipatterns 	Highlight patterns in text 	README 	Help file
-- mini.icons 	Icon provider 	README 	Help file
-- mini.indentscope 	Visualize and work with indent scope 	README 	Help file
-- mini.map 	Window with buffer text overview 	README 	Help file
-- mini.notify 	Show notifications 	README 	Help file
-- mini.tabline 	Tabline 	README 	Help file
-- mini.trailspace 	Trailspace (highlight and remove) 	README 	Help file
-- mini.doc 	Generate Neovim help files 	README 	Help file
-- mini.test 	Test Neovim plugins 	README 	Help file

