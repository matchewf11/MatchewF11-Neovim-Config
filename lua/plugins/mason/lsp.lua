local function config()
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
  }

  -- auto update?
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
  -- 		      -- Lua={completions={callSnippet='Replace'},diagnostive={disable={'missings-fields'}},
  -- 		      --'stylua',   -- lua fmt
  -- 		      --'luacheck', -- lua linting
  -- 		    },
  -- 		    --auto_update = true, -- does this do anything given my setup
  -- 		    --run_on_start = true,
  -- 		}
  -- 	end,
  -- }

  -- look into plugins for each language
  -- config stuff?
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
      'clangd',
      'clang-format',
      -- rust
      'rust_analyzer',
      'bacon',
      -- toml
      'taplo',
      -- make
      'checkmake',
    },
  }

  -- how do i know if this is working
  -- is this structure right
  -- does it still 'ensure installed' correctly
  -- make sure ensure_installed still works
  local lspconfig = require 'lspconfig'
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
        lspconfig[server_name].setup {
          capabilities = capabilities,
        }
      end,
    },
  }

  -- set up personal languages
  lspconfig.ocamllsp.setup {
    capabilities = capabilities,
    -- cmd
    -- filetype
    -- settings
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

-- config stuff that i add
-- lookm more into stuff i added

--LSP
-- ast-grep, autotools-ls, bacon_ls, bashls, basicsls, cspell, diagnosticsls, dockercompose langauge server,
-- docker-lagnuage-server, dockerls, dprint, efm,
-- emmylua_ls, golangci-lint-langserver,
-- grammerly-langugageserver, harper-ls, ltex-ls, systemd-ls,, termux-ls, textlsp, tombi(is mine better or both)

-- c,
-- debugger (more for C, C++, Rust)
-- bash-debug-dapteer, codelldb, delve, go-debug-dabter, ocamlearlybird
-- mock and local lua

-- linter
-- ast-grep, codespell, commitlint, cpplint, cspell, dotenv-linter, gitlint,
-- gospel, hadolint, misspell, revive, selene, shellcheck,
-- shellharden, semgrep, staticcheck, systemdlint, textlint, typos

-- formatter
--beautysh, crlfmt, gci, goimports-reviser, golines, go modify tages,
--gotests, luaformatter, ocaml_format, shellharden, shfmt, tombi, yamlfix, yamlfmt

-- docker
-- 'dockerls',
-- 'hadolint',
--
-- and other stuff!!!!
--   -- LSPs
--   "rust_analyzer", -- Rust
--   "html",          -- HTML
--   "cssls",         -- CSS
--   "tsserver",      -- TypeScript/JavaScript
--   "jsonls",        -- JSON
--   "yamlls",        -- YAML
--   "dockerls",      -- Docker
--   "bashls",        -- Shell scripts
--   "marksman",      -- Markdown
--   "lemminx",       -- XML
--   "sqlls",         -- SQL
--   "pyright",       -- Python
--   "eslint",        -- ESLint LSP (JavaScript/TypeScript)
--   "graphql",       -- GraphQL
--   "vimls",         -- Vimscript
--
--   -- Formatters
--   "prettier",      -- Web (HTML, CSS, etc.)
--   "shfmt",         -- Shell
--   "rustfmt",       -- Rust
--   "black",         -- Python
--   "isort",         -- Python
--   "sql-formatter", -- SQL
--   "yamlfmt",       -- YAML
--   "markdownlint",  -- Markdown
--
--   -- Linters
--   "shellcheck",    -- Shell
--   "luacheck",      -- Lua
--   "flake8",        -- Python
--   "eslint_d",      -- JavaScript/TypeScript
--   "markdownlint",  -- Markdown
--
--   -- Debuggers (DAP)
--   "delve",         -- Go
--   "codelldb",      -- Rust, C/C++
--
