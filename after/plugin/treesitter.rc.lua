local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "swift",
    "css",
    "python",
    "html",
    "ruby",
    "markdown",
    "lua"
  },
  autotag = {
    enable = true,
  },
}
