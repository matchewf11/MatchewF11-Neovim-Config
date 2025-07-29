local function config() -- can include event
  require('config.autocmds').lsp()
  vim.diagnostic.config {
    severity_sort = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = '󰅚 ',
        [vim.diagnostic.severity.WARN] = '󰀪 ',
        [vim.diagnostic.severity.INFO] = '󰋽 ',
        [vim.diagnostic.severity.HINT] = '󰌶 ',
      },
    },

    virtual_text = {
      source = 'if_many',
      spacing = 1,
      format = function(diagnostic)
        return diagnostic.message
      end,
    },

    -- float = { border = 'rounded' },
  }

  -- config the stuff i install later?
  -- 	-- can change: cmd (server start), filetype, capabilites, settings
  -- 	-- opts = {
  -- 	-- 	ensure_installed = {
  -- 	-- 		'lua_ls',
  -- 	-- 	}
  -- 	--
  -- 	-- },
  -- 	config = function()
  -- 		require('mason-tool-installer').setup {
  -- 		    ensure_installed = {
  -- 		      'lua_ls',
  -- 		      -- 'stylua',
  -- 		      --'stylua',
  -- 		      --'luacheck',
  -- 		      --'lua_ls',   -- lua lsp
  -- 		      -- Lua={completions={callSnippet='Replace'},diagnostive={disable={'missings-fiedls'}},
  -- 		      --'stylua',   -- lua fmt
  -- 		      --'luacheck', -- lua linting
  -- 		    },
  -- 		    --auto_update = true, -- does this do anything given my setup
  -- 		    --run_on_start = true,
  -- 		}
  -- 	end,
  -- }

  require('mason-tool-installer').setup {
    ensure_installed = {
      -- lua stuff
      'lua_ls',
      'stylua',
      'luacheck',
      -- go stuff
      'gopls',
      'goimports',
      'gofumpt',
      'golangci-lint',
      -- c stuff
      -- 'clangd',
      -- 'clang-format',
      -- --'cpplint',
      -- -- make stuff
      -- 'checkmake',
    },
  }

  -- how do i know if this is working
  -- is this structure right
  -- does it still 'ensure installed' correctly
  -- make sure ensure_installed still works
  local capabilities = require('blink.cmp').get_lsp_capabilities()
  require('mason-lspconfig').setup { -- how do i know if this is working
    handlers = {
      function(server_name)
        -- this for config
        -- local server = servers[server_name] or {}
        -- server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        -- require('lspconfig')[server_name].setup(server)
        -- do i set up something here?
        --require('lspconfig')[server].setup(server_namee)
        require('lspconfig')[server_name].setup {
          capabilities = capabilities,
        }
      end,
    },
  }
  -- auto installation? = false in kcistart
  -- is turning off auto install necessary
end

return {
  'neovim/nvim-lspconfig',
  lazy = false, -- fix this later idk how to fix
  -- lazy = true,                            -- does lazy work in this context
  -- event = { 'BufReadPre', 'BufNewFile' }, -- get rid of vary lazy?
  -- cmd = { 'Mason' },

  -- install with keys
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    'saghen/blink.cmp',
  },
  config = config,
}

--   make sure to look for stuff for every language in mason and ask chat for outside of mason
-- look for other stuff(lsp, dap, linters, formatters)(add to treesitter)
-- look for random languages markdown, bash, sql, docker (code spell)(+ generic stuff)
-- config stuff that i add

--    'lua-language-server', 'vim-language-server', 'stylua', 'shellcheck',
--    'editorconfig-checker','gofumpt', 'golines', 'gomodifytags', 'gotests',
--    'impl', 'json-to-struct', 'luacheck', 'misspell', 'revive', 'shellcheck',
--    'shfmt', 'staticcheck', 'vint',

-- look into textobject again, context, and otehr mini stuff i skipped

-- 'rust_analyzer', -- Rust
-- 'clangd',        -- C/C++
-- 'bashls',        -- Shell
-- 'dockerls',      -- Docker
-- 'jsonls',        -- JSON
-- 'yamlls',        -- YAML
-- 'html',          -- HTML
-- 'cssls',         -- CSS
-- 'tsserver',      -- JS/TS
-- 'eslint',        -- JS/TS lint
-- 'marksman',      -- Markdown
-- 'taplo',         -- TOML
-- 'sqls',          -- SQL
-- 'lemminx',       -- XML
-- c debugger?
-- look at more mason stuff
