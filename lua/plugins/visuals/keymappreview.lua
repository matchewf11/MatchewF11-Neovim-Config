-- this is done!!!!
return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    delay = 0,
    spec = {
      { '<leader>s', group = '[s]earch' },
      { '<leader>h', group = '[h]unk' },
    },
  },
}
