local M = {}

function M.global()
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- clear hl's w/ esc

  -- Diagnostic keymaps
  vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

  -- NOTE:This won't work in all terminal emulators/tmux/etc.Try your own mapping
  -- or just use <C-\><C-n> to exit terminal mode
  vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

  vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
  vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
  vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
  vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

  -- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
  -- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
  -- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
  -- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
  -- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
end

-- which-key
-- esc to exit
-- backspace to go back
-- <C-u/d> to go up and down

-- oil.nvim keymaps
--keymaps = {
--     ["g?"] = { "actions.show_help", mode = "n" },
--     ["<CR>"] = "actions.select",
--     ["<C-s>"] = { "actions.select", opts = { vertical = true } },
--     ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
--     ["<C-t>"] = { "actions.select", opts = { tab = true } },
--     ["<C-p>"] = "actions.preview",
--     ["<C-c>"] = { "actions.close", mode = "n" },
--     ["<C-l>"] = "actions.refresh",
--     ["-"] = { "actions.parent", mode = "n" },
--     ["_"] = { "actions.open_cwd", mode = "n" },
--     ["`"] = { "actions.cd", mode = "n" },
--     ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
--     ["gs"] = { "actions.change_sort", mode = "n" },
--     ["gx"] = "actions.open_external",
--     ["g."] = { "actions.toggle_hidden", mode = "n" },
--     ["g\\"] = { "actions.toggle_trash", mode = "n" },
--},

function M.lsp()
  -- lsp keymaps
  -- map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
  -- map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })
  -- map('grr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  -- map('gri', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
  -- map('grd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
  -- map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  -- map('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')
  -- map('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')
  -- map('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')
end

return M
