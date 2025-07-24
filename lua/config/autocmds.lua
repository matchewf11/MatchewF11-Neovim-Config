local M = {}

function M.global()
  vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
      vim.hl.on_yank()
    end,
  })
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua',
    callback = function()
      vim.bo.expandtab = true -- Use spaces
      vim.bo.tabstop = 2 -- Tabs show as n spaces
      vim.bo.shiftwidth = 2 -- Indent with n spaces
      vim.bo.softtabstop = 2 -- Tab key inserts 2 spaces
    end,
  })
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'go',
    callback = function()
      vim.bo.expandtab = false
      vim.bo.tabstop = 4
      vim.bo.shiftwidth = 4
      vim.bo.softtabstop = 4
    end,
  })
end

function M.lsp()
  vim.api.nvim_create_autocmd('LspAttach', { -- do this when i attach lsp
    --group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
    callback = function()
      require('config.keymaps').lsp()

      --@param client vim.lsp.Client
      --@param method vim.lsp.protocol.Method
      --@param bufnr? integer some lsp support methods only in specific files
      --@return boolean

      --           -- The following two autocommands are used to highlight references of the
      --           -- word under your cursor when your cursor rests there for a little while.
      --           --    See `:help CursorHold` for information about when this is executed
      --           --
      --           -- When you move your cursor, the highlights will be cleared (the second autocommand).
      --           local client = vim.lsp.get_client_by_id(event.data.client_id)
      -- if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
      --             local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
      --             vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
      --               buffer = event.buf,
      --               group = highlight_augroup,
      --               callback = vim.lsp.buf.document_highlight,
      --             })
      --
      --             vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
      --               buffer = event.buf,
      --               group = highlight_augroup,
      --               callback = vim.lsp.buf.clear_references,
      --             })
      --
      --             vim.api.nvim_create_autocmd('LspDetach', {
      --               group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
      --               callback = function(event2)
      --                 vim.lsp.buf.clear_references()
      --                 vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
      --               end,
      --             })
      --           end
    end,
  })
end

return M
