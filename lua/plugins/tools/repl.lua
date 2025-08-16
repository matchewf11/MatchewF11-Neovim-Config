-- look into keymaps
return {
  'jpalardy/vim-slime',
  ft = { 'lua', 'ocaml' }, -- add any other langs you use
  config = function()
    vim.g.slime_target = 'tmux' -- can also be tmux
    vim.g.slime_dont_ask_default = 1
    vim.g.slime_default_config = {
      socket_name = 'default',
      target_pane = '{last}',
    }
  end,
}
-- return {
--   'jpalardy/vim-slime',
--   ft = { 'lua', 'ocaml' }, -- add any other langs you use
--   config = function()
--     vim.g.slime_target = 'neovim' -- can also be tmux
--     vim.g.slime_dont_ask_default = 1
--     vim.g.slime_default_config = {
--       -- socket_name = 'default',
--       -- target_pane = '{last}',
--       jobid = nil,
--     }
--
--     vim.api.nvim_create_user_command('SlimeSetTerminal', function()
--       local jobid = vim.b.terminal_job_id
--       if jobid then
--         vim.g.slime_default_config = { jobid = jobid }
--         print('Slime target set to terminal job ' .. jobid)
--       else
--         print 'Not in a terminal buffer'
--       end
--     end, {})
--   end,
-- }
