require('lazy').setup {
  spec = { { import = 'plugins' } },
  install = { colorscheme = { 'kanagawa' } },
  -- ui = { custom_keys = { can look at keybings by pressing ? } },
  change_detection = { notify = false },
}

-- require 'kickstart.plugins.debug', (more debugger?)
-- require 'kickstart.plugins.indent_line',
-- require 'kickstart.plugins.lint',

-- opts --keycaps
-- make sure max out laziness
-- render markdown
-- go, rust, lua

-- func that changes working dir
-- group plugins by files or dir
-- look thorugh config file to clean things up like keymaps and stuff
--
-- work with picom to fix tearing
-- keep all plugins as minial as possible with config and stuff and keymaps (try to get rid of stuff)
-- learn about stylua and lualsp and lua check
-- get other status bar (get rid of mini.nvim stuff)(lualine.nvim)
-- toggleterm.nvim or make my own keycaps (want it to be persistant)
-- source %
-- maybe use docker tools and shell and sql and other stuff
-- edit to make plugins better looking can i give autocmds and keymaps to the right
-- files?

-- adn otehr stuff!!!!
-- ensure_installed = {
--   -- LSPs
--   "gopls",         -- Go
--   "rust_analyzer", -- Rust
--   "html",          -- HTML
--   "cssls",         -- CSS
--   "tsserver",      -- TypeScript/JavaScript
--   "jsonls",        -- JSON
--   "yamlls",        -- YAML
--   "dockerls",      -- Docker
--   "bashls",        -- Shell scripts
--   "marksman",      -- Markdown
--   "taplo",         -- TOML
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
--   "goimports",     -- Go
--   "gofumpt",       -- Go
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
--   "golangci-lint", -- Go
--   "flake8",        -- Python
--   "eslint_d",      -- JavaScript/TypeScript
--   "markdownlint",  -- Markdown
--
--   -- Debuggers (DAP)
--   "delve",         -- Go
--   "codelldb",      -- Rust, C/C++
--   "debugpy",       -- Python
--   "js-debug-adapter", -- JS/TS
-- }
--
-- look into tab feature?, also amek sure config matches (search tabs fzf, hide tabs and otehr stuff)
-- look into all my plugin configs to see if it affects anythign
-- look into floating windows from tj

--make sure to look at all plugins keymaps to write down
-- look at all config again (clean adn look for errs)
-- rellook at all config specs for plugins
-- copys notes over from mac
-- config other stuff
-- reasearch nvim basic keymaps and commands
-- config firefox as well
-- add a bunch of the default keymaps of the plugins i added to the keymap file
-- :help
-- this file is good just, review plugins from /plugins/ folder
-- could i just use web-devicons or mini icons
-- conifg web-devicons
-- get rid of defualt config if i dont change (get rid of config options to make simple)
-- do a want a winbar with lualine?
