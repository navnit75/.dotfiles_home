return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		local keymap = function(keys, func)
			vim.keymap.set("n", keys, func, {})
		end

		require("telescope").setup({})
		local builtin = require("telescope.builtin")

		keymap("<leader><leader>", builtin.find_files)
		keymap("<leader>fg", builtin.live_grep)
	end,
}
