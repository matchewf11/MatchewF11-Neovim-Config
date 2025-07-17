-- CTRL n, p move prev
-- CTRL j, k move selection
-- CTRL v, s split w/ selection
return {
	'ibhagwan/fzf-lua',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
    file_icon_padding = '',
    winopts = {
      treesitter = {
        enabled = true,
      },
      preview = {
        wrap = true,
        scrollbar = false,
      },
    },
    keymap = {
      builtin = {
        ["<C-n>"] = "preview-page-down",
        ["<C-p>"] = "preview-page-up",
      },
    },
    previewers = {
      builtin = {
        treesitter = {
          enabled = true,
        },
      },
    },
  },
  keys = {
    { '<leader>fb', function() require('fzf-lua').buffers() end, desc = '[f]ind [b]uffer' },
    { '<leader>ff', function() require('fzf-lua').files() end, desc = '[f]ind [f]ile' },
    { '<leader>fo', function() require('fzf-lua').oldfiles() end, desc = '[f]ind [o]ld files' },
    { '<leader>fl', function() require('fzf-lua').blines() end, desc = '[f]ind [l]ines (local)' },
    { '<leader>fL', function() require('fzf-lua').lines() end, desc = '[Ff]ind [L]ines (buffers)' },
  }
}

-- tags 	search project tags
-- btags 	search buffer tags
-- tags_grep 	grep project tags
-- tags_grep_cword 	tags_grep word under cursor
-- tags_grep_cWORD 	tags_grep WORD under cursor
-- tags_grep_visual 	tags_grep visual selection
-- tags_live_grep 	live grep project tags
--
-- git_files 	git ls-files
-- git_status 	git status
-- git_diff 	git diff {ref}
-- git_hunks 	git hunks {ref}
-- git_commits 	git commit log (project)
-- git_bcommits 	git commit log (buffer)
-- git_blame 	git blame (buffer)
-- git_branches 	git branches
-- git_tags 	git tags
-- git_stash 	git stash
--
-- lsp_references 	References
-- lsp_definitions 	Definitions
-- lsp_declarations 	Declarations
-- lsp_typedefs 	Type Definitions
-- lsp_implementations 	Implementations
-- lsp_document_symbols 	Document Symbols
-- lsp_workspace_symbols 	Workspace Symbols
-- lsp_live_workspace_symbols 	Workspace Symbols (live query)
-- lsp_incoming_calls 	Incoming Calls
-- lsp_outgoing_calls 	Outgoing Calls
-- lsp_code_actions 	Code Actions
-- lsp_finder 	All LSP locations, combined view
-- diagnostics_document 	Document Diagnostics diagnostics_workspace 	Workspace Diagnostics lsp_document_diagnostics 	alias to diagnostics_document
-- lsp_workspace_diagnostics 	alias to diagnostics_workspace

-- resume 	resume last command/query
-- builtin 	fzf-lua builtin commands
-- profiles 	fzf-lua configuration profiles
-- helptags 	help tags
-- manpages 	man pages
-- highlights 	highlight groups
-- commands 	neovim commands
-- command_history 	command history
-- search_history 	search history
-- marks 	:marks
-- jumps 	:jumps
-- changes 	:changes
-- registers 	:registers
-- tagstack 	:tags
-- autocmds 	:autocmd
-- nvim_options 	neovim options
-- keymaps 	key mappings
-- filetypes 	filetypes
-- menus 	menus
-- spellcheck 	misspelled words in buffer
-- spell_suggest 	spelling suggestions
-- packadd 	:packadd 
--
-- register_ui_select 	register fzf-lua as the UI interface for vim.ui.select
-- deregister_ui_select 	de-register fzf-lua with vim.ui.select
--
-- dap_commands 	list,run nvim-dap builtin commands
-- dap_configurations 	list,run debug configurations
-- dap_breakpoints 	list,delete breakpoints
-- dap_variables 	active session variables
-- dap_frames 	active session jump to frame
--
-- tmux_buffers 	list tmux paste buffers
--
-- zoxide 	list recent directories
--
-- complete_path 	complete path under cursor (incl dirs)
-- complete_file 	complete file under cursor (excl dirs)
-- complete_line 	complete line (all open buffers)
-- complete_bline 	complete line (current buffer only)

-- -- quickfix -- qf list
-- -- quickfix_stack  -- qf stack
-- -- loclist -- locations list
-- -- loclist_stack -- location stack
-- -- treesitter -- treesitter symbols

-- grep
-- grep_last -- last patter
-- grep_cword -- word under cursor
-- grep_cWORD -- search WORD under cursotr
-- grep_visual -- search visual selection
-- grep_project -- search all project lines
-- grep_curbuf 	search current buffer lines
-- grep_quickfix 	search the quickfix list
-- grep_loclist 	search the location list
-- lgrep_curbuf 	live grep current buffer
-- lgrep_quickfix 	live grep the quickfix list
-- lgrep_loclist 	live grep the location list
-- live_grep 	live grep current project
-- live_grep_resume 	live grep continue last search
-- live_grep_glob 	live_grep with rg --glob support
-- live_grep_native 	performant version of live_grep

-- vim: ts=2 sts=2 sw=2 et
