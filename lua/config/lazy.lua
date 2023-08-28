local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.highlights")

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "nvim-lua/plenary.nvim" },
    -- { "github/copilot.vim", enabled = false },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  -- install = { 
	--  colorscheme = { "neosolarized" },
  -- },
  ui = {
	  -- a number <1 is a percentage., >1 is a fixed size
	  size = { width = 0.8, height = 0.8 },
	  wrap = true, -- wrap the lines in the ui
	  -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
	  border = "none",
	  title = nil, ---@type string only works when border is not "none"
	  title_pos = "center", ---@type "center" | "left" | "right"
	  -- Show pills on top of the Lazy window
	  pills = true, ---@type boolean
	  icons = {
		  cmd = " ",
		  config = "",
		  event = "",
		  ft = " ",
		  init = " ",
		  import = " ",
		  keys = " ",
		  lazy = "󰒲 ",
		  loaded = "●",
		  not_loaded = "○",
		  plugin = " ",
		  runtime = " ",
		  source = " ",
		  start = "",
		  task = "✔ ",
		  list = {
			  "●",
			  "➜",
			  "★",
			  "‒",
		  },
	  }
  },
  checker = { enabled = false }, -- automatically check for plugin updates
})

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('config.macos')
end
if is_linux == 1 then
  require('config.linux')
end
if is_win == 1 then
  require('config.windows')
end
if is_wsl == 1 then
  require('config.wsl')
end
