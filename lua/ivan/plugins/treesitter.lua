local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end
treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {
		"json",
		"javascript",
		"yaml",
		"html",
		"css",
		"markdown",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitattributes",
	},
	auto_install = true,
})
