return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"vimdoc",
			"lua",
			"java",
			"typescript",
			"javascript",
			"python",
			"c",
			"bash",
			"json",
			"yaml",
			"markdown",
			"markdown_inline",
		},
		auto_install = true,
		indent = { enable = true },
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
}
