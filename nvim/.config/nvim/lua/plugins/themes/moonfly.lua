return {
	"bluz71/vim-moonfly-colors",
	config = function()
		vim.g.moonflyItalics = false -- Disables italic syntax highlighting
		vim.g.moonflyItalicComments = false -- Disables italic comments
		vim.cmd.colorscheme("moonfly")
	end,
}
