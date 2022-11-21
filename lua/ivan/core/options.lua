local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabbing & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:prepend({ "unnamed", "unnamedplus" })

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.backup = false
opt.swapfile = false
opt.writebackup = false

opt.fileencodings = "ucs-bom,utf-16le,utf-8,default,latin1,cp1251,koi8-r"
opt.encoding = "utf-8"
