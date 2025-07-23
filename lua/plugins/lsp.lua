local function config(event)
  _ = event -- get rid of warning
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

    -- virtual_text = {
    --   spacing = 1,
    --   format = function(diagnostic)
    --     local icons = {
    --       [vim.diagnostic.severity.ERROR] = " ",
    --       [vim.diagnostic.severity.WARN]  = " ",
    --       [vim.diagnostic.severity.INFO]  = " ",
    --       [vim.diagnostic.severity.HINT]  = "󰌵 ",
    --     }
    --     local icon = icons[diagnostic.severity] or ""
    --     local source = diagnostic.source or ""
    --     return string.format("%s%s [%s]", icon, diagnostic.message, source)
    --   end,
    -- }

    virtual_text = {
      source = 'if_many', -- only show source if more than one lsp
      spacing = 1, -- padding between code and text
      format = function(diagnostic)
        -- use this for custom messages
        -- local diagnostic_message = {
        --   [vim.diagnostic.severity.ERROR] = diagnostic.message,
        --   [vim.diagnostic.severity.WARN] = diagnostic.message,
        --   [vim.diagnostic.severity.INFO] = diagnostic.message,
        --   [vim.diagnostic.severity.HINT] = diagnostic.message,
        -- }
        -- return diagnostic_message[diagnostic.severity]
        return diagnostic.message
      end,
    },

    --   float = { border = 'rounded', source = 'if_many' },
    --   underline = { severity = vim.diagnostic.severity.ERROR }, -- can change this .WARN
    --   update_in_instert = false? -- this is random thing i added
  }

  -- config the stuff i install later?
  -- like in kickstart

  require('mason-tool-installer').setup {
    ensure_installed = {
      'lua_ls',
      'stylua',
    },

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
  }

  local capabilities = require('blink.cmp').get_lsp_capabilities()
  require('mason-lspconfig').setup { -- how do i know if this is working
    handlers = {
      function(server_name)
        -- this for config
        --local server = servers[server_name] or {}
        --server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        --require('lspconfig')[server_name].setup(server)
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
--ensure that lua, go, and rust lsp gets downloaded (and other cools stuff)
-- look for other cool stuff in mason (lsp, dap, linters, formatters)
-- look for rnadom languages markdown, bash, sql, docker (code spell)(+ generic stuff)
-- config stuff that i add
-- lua with types plug in?

--    'lua-language-server', 'vim-language-server', 'stylua', 'shellcheck',
--    'editorconfig-checker','gofumpt', 'golines', 'gomodifytags', 'gotests',
--    'impl', 'json-to-struct', 'luacheck', 'misspell', 'revive', 'shellcheck',
--    'shfmt', 'staticcheck', 'vint',

-- also find a way to run luacheck
-- look into textobject again, context, and otehr mini stuff i skipped

-- make like a file that makes it easy to add langues with customizations
-- like with treesitter, lsp, fmt, linting, adn otehr stuff

-- -- Other popular tooling
-- 'gopls',         -- Go
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
