-- ideally clean this file out and look into more plugins
-- look for alternatives
return {
  'echasnovski/mini.nvim',
  version = false,
  event = 'VeryLazy',
  config = function()
    require('mini.cursorword').setup { delay = 0 }

    -- mini.ai 	Extend and create a/i textobjects 	README 	Help file
    -- mini.align 	Align text interactively 	README 	Help file
    -- mini.comment 	Comment lines 	README 	Help file
    -- mini.move 	Move any selection in any direction 	README 	Help file
    -- mini.operators 	Text edit operators 	README 	Help file
    -- mini.snippets 	Manage and expand snippets 	README 	Help file
    -- mini.splitjoin 	Split and join arguments 	README 	Help file
    -- mini.surround 	Surround actions 	README 	Help file

    -- mini.bracketed 	Go forward/backward with square brackets 	README 	Help file
    -- mini.jump 	Jump to next/previous single character 	README 	Help file
    -- mini.jump2d 	Jump within visible lines 	README 	Help file
    -- mini.sessions 	Session management 	README 	Help file
    -- mini.visits 	Track and reuse file system visits 	README 	Help file

    -- setup_auto_root
    -- find_root
  end,
}
