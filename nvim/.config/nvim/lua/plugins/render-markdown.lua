return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {
		preset = "obsidian",
		completions = {
			blink = { enabled = true },
		},
	},
}
