local function config(event)

  require('config.autocmds').lsp()

  -- vim.diagnostic.config {
  --   severity_sort = true,
  --   float = { border = 'rounded', source = 'if_many' },
  --   underline = { severity = vim.diagnostic.severity.ERROR },
  --
  --   signs = { 
  --     text = {
  --       [vim.diagnostic.severity.ERROR] = '󰅚 ',
  --       [vim.diagnostic.severity.WARN] = '󰀪 ',
  --       [vim.diagnostic.severity.INFO] = '󰋽 ',
  --       [vim.diagnostic.severity.HINT] = '󰌶 ',
  --     },
  --   },
  --
  --   virtual_text = {
  --     source = 'if_many',
  --     spacing = 2,
  --     format = function(diagnostic)
  --       local diagnostic_message = {
  --         [vim.diagnostic.severity.ERROR] = diagnostic.message,
  --         [vim.diagnostic.severity.WARN] = diagnostic.message,
  --         [vim.diagnostic.severity.INFO] = diagnostic.message,
  --         [vim.diagnostic.severity.HINT] = diagnostic.message,
  --       }
  --       return diagnostic_message[diagnostic.severity]
  --     end,
  --   },
  -- }

  local capabilitees = require('blink.cmp').get_lsp_capabilities()

  -- can change: cmd (server start), filetype, capabilites, settings
  require('mason-tool-installer').setup {
    ensure_installed = {
      -- 'lua_ls',
      -- 'stylua',
      --'stylua',
      --'luacheck',
      --'lua_ls',   -- lua lsp
      -- Lua={completions={callSnippet='Replace'},diagnostive={disable={'missings-fiedls'}},
      --'stylua',   -- lua fmt
      --'luacheck', -- lua linting
    },
    --auto_update = true, -- does this do anything given my setup
    -- auto run?
  }

  require('mason-lspconfig').setup {
    -- is turning off auto install necessary

    -- handlers = {
    --   function(server_name)
    --   --             local server = servers[server_name] or {}
    --   --             -- This handles overriding only values explicitly passed
    --   --             -- by the server configuration above. Useful when disabling
    --   --             -- certain features of an LSP (for example, turning off formatting for ts_ls)
    --   --             server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
    --   --             require('lspconfig')[server_name].setup(server)
    --
    --     -- do i set up something here?
    --     --require('lspconfig')[server].setup(server_namee)
    --   end,

  }

end

return {
  'neovim/nvim-lspconfig',
  lazy = true, -- does lazy work in this context
  event = { 'BufReadPre', 'BufNewFile' },
  cmd = { 'Mason' },

  -- install with keys
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },       -- lsp external installer
    'mason-org/mason-lspconfig.nvim',            -- connect installs with nvim lsp
    'WhoIsSethDaniel/mason-tool-installer.nvim', -- connects tools with nvim
    { 'j-hui/fidget.nvim',    opts = {} },
    'saghen/blink.cmp',                          -- autocomplete configured elsewhere
  },
  config = config,
}

-- do go and rust another time, and lua again
--   make sure to look for stuff for every language in mason and ask chat for outside of mason
--   ensure that lua, go, and rust lsp gets downloaded (mason)
--   look for other stuff in mason
--   lsp, dap, linters, and formatters
--   make sure to install markdown, and bash, and check for otehr stuff too
--    'lua-language-server', 'vim-language-server', 'stylua', 'shellcheck',
--    'editorconfig-checker','gofumpt', 'golines', 'gomodifytags', 'gotests',
--    'impl', 'json-to-struct', 'luacheck', 'misspell', 'revive', 'shellcheck',
--    'shfmt', 'staticcheck', 'vint',
-- add mason to dashboard
-- make sure to config suff if possible (lsp and formatter)
-- format thing and format on save
-- also find a way to run luacheck
-- look into textobject again, context, and otehr mini stuff i skipped
-- look for all other stuff in mason like codespell (otehr generic stuff)
-- maybe also sql stuff, bash stuff
-- make sure that all my stuff in tools is installing automatically
-- look at the lua type plugin thing
-- look up how to shift k look and scroll it or open it in a split

-- vim: ts=2 sts=2 sw=2 et
