vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8' -- Set this script in utf-8
vim.opt.encoding = "utf-8" -- Set defualt encoding for creating files
vim.opt.fileencoding = "utf-8" -- Set default encoding for saved files 

vim.wo.number = true -- Set number of strings

vim.opt.title = true -- Name of file is title of vim
vim.opt.autoindent = true -- Automatic indent for next string
vim.opt.hlsearch = true -- Highlight searh results
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'cmd'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2 -- Set Tab is 2 spaces
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules*' }

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisk '*' in comment block: /* */
vim.opt.formatoptions:append { 'r' }
