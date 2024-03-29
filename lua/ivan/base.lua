vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = true

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2

vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

vim.conceallevel = 0

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

vim.opt.list = false
vim.opt.listchars:append "space:."
-- vim.opt.listchars:append "trail:·"
vim.opt.listchars:append "tab:--"
-- vim.opt.listchars:append "eol:."
-- vim.cmd ([[highlight NonText gui=italic guifg=lightgrey]])
vim.cmd ([[highlight Whitespace guifg=#e8dfdf gui=nocombine]])