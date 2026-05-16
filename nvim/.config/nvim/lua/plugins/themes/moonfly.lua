return {
	"bluz71/vim-moonfly-colors",
	config = function()
		vim.g.moonflyItalics = true -- Disables italic syntax highlighting
		vim.g.moonflyItalicComments = true -- Disables italic comments
		vim.cmd.colorscheme("moonfly")
	end,
}
