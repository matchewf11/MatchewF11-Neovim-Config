-- preview cmds before they happen
return {
  'folke/which-key.nvim',
  lazy = true,
  event = 'VeryLazy',
  opts = {
    delay = 0,
    icons = {
      mappings = true,
      keys = {},
    },
    spec = {
      { '<leader>s', group = '[s]earch' },
    },
  },
}
