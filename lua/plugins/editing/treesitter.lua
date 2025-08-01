local large_file = function(lang, buf) -- disables for large files
  local max_filesize = 100 * 1024 -- 100 KB
  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
  if ok and stats and stats.size > max_filesize then
    return true
  end
end

-- langs that are janky
local regex_langs = {}
-- highlight, edit, and naviage code
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'c',
      'diff',
      'html',
      'haskell',
      'rust',
      'lua',
      'luadoc',
      'vim',
      'vimdoc',
      'query',
      'make',
      'markdown',
      'markdown_inline',
      'go',
      'toml',
      -- 'gomod', 'gosum', 'gowork', 'comment'
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      disable = large_file,
      additional_vim_regex_highlighting = regex_langs,
    },
    indent = {
      enable = true,
      disable = regex_langs,
    },
  },
}
