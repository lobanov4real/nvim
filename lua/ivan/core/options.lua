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

<<<<<<< HEAD
opt.backup = false
opt.swapfile = false
=======
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"
>>>>>>> fb706ec8ad40229dc71e0a208a30d7dee6e562aa
