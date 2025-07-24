-- i am done with this

local function getClients()
  local clients = {}
  for _, client in ipairs(vim.lsp.get_clients { bufnr = 0 }) do
    table.insert(clients, client.name)
  end
  return table.concat(clients, ' ')
end

local function shortenMode(str)
  local f, s = str:match '^(%a)%w*%-?(%a?)'
  if s ~= '' then
    return f .. '-' .. s
  else
    return f
  end
end

return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'lewis6991/gitsigns.nvim' },
  opts = {
    options = {
      disabled_filetypes = { statusline = { 'dashboard' } },
      globalstatus = true,
    },

    sections = {
      lualine_a = {
        { 'mode', fmt = shortenMode },
      },
      lualine_b = { 'branch', 'diff' },
      lualine_c = {
        { 'filetype', icon_only = true, component_separators = '' },
        { 'filename', newfile_status = true, path = 4 },
      },
      lualine_x = { getClients },
      lualine_y = { 'diagnostics' },
      lualine_z = { 'searchcount', 'selectioncount', 'location' },
    },

    extensions = {
      'quickfix',
      'fzf',
      'lazy',
      'man',
      'mason',
      'oil',
      'toggleterm',
    },
  },
}
