return { -- look into this
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    lazy = true,
  },
  { -- config both and look into theri lazyies
    'nvim-treesitter/nvim-treesitter-context',
    event = 'VeryLazy',
    enable = true,
  },
}
