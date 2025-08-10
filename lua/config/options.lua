vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.showmode = true

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'nosplit'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true

vim.o.guicursor = 'a:block'

vim.o.laststatus = 2

function _G.diagnostic_summary()
  local diags = vim.diagnostic.get(nil) -- all buffers, 0 for only curr
  local counts = { 0, 0, 0, 0 } -- error, warn, info, hint
  for _, d in ipairs(diags) do
    counts[d.severity] = counts[d.severity] + 1
  end
  local parts = {}
  if counts[vim.diagnostic.severity.ERROR] > 0 then
    table.insert(parts, 'E:' .. counts[vim.diagnostic.severity.ERROR])
  end
  if counts[vim.diagnostic.severity.WARN] > 0 then
    table.insert(parts, 'W:' .. counts[vim.diagnostic.severity.WARN])
  end
  if counts[vim.diagnostic.severity.INFO] > 0 then
    table.insert(parts, 'I:' .. counts[vim.diagnostic.severity.INFO])
  end
  if counts[vim.diagnostic.severity.HINT] > 0 then
    table.insert(parts, 'H:' .. counts[vim.diagnostic.severity.HINT])
  end
  if #parts == 0 then
    return ''
  end
  return table.concat(parts, ' ')
end

-- can change colors off head, status, and diagnostics
vim.o.statusline = table.concat {
  '%{get(b:,"gitsigns_head","")}: ', -- head
  '%{get(b:,"gitsigns_status","")} ', -- status
  '%f %m%r%h%w%q ', -- file info
  '%=', -- split left = right sides
  '%{v:lua.diagnostic_summary()} ', -- diagnostics
  '[%l:%v]', -- cursor pos
}
