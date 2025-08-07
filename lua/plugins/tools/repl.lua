-- look into keymaps
return {
  'jpalardy/vim-slime',
  ft = { 'lua', 'ocaml' }, -- add any other langs you use
  config = function()
    vim.g.slime_target = 'tmux'
    vim.g.slime_default_config = {
      socket_name = 'default',
      target_pane = '{last}',
    }
    vim.g.slime_dont_ask_default = 1
  end,
}
