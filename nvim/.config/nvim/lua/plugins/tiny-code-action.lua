return {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },

		-- optional picker via telescope
		{ "nvim-telescope/telescope.nvim" },
		-- optional picker via fzf-lua
		{ "ibhagwan/fzf-lua" },
		-- .. or via snacks
		{
			"folke/snacks.nvim",
			opts = {
				terminal = {},
				scratch = {
					ft = "markdown",
					win = { width = 0.8, height = 0.8 },
				},
			},
		},
	},
	event = "LspAttach",
	opts = {},
}
