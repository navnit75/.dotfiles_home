return {
	"stevearc/aerial.nvim",
	opts = {
		layout = { default_direction = "right" },
		show_guides = true,
		filter_kind = { "Function", "Method", "Class", "Constructor" },
		backends = { "lsp", "treesitter" },
	},
	keys = {
		{ "<leader>a", "<cmd>AerialToggle<cr>", desc = "Aerial" },
	},
}
