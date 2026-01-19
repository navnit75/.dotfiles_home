return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.g.everforest_background = "hard"
		vim.g.everforest_enable_italic = 0
		vim.g.everforest_disable_italic_comment = 1
		vim.g.everforest_better_performance = 1
		vim.g.everforest_transparent_background = 1
		vim.g.everforest_diagnostic_text_highlight = 0
		vim.g.everforest_diagnostic_line_highlight = 0
		vim.g.everforest_diagnostic_virtual_text = "grey"
		vim.cmd.colorscheme("everforest")
	end,
}
