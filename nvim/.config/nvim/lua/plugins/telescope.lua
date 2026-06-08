return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = "Telescope",
	keys = {
		{ "<leader><leader>", function() require("fff").find_files() end },
		{ "<leader>fg", function() require("fff").live_grep() end },
		{ "<leader>pws", function() require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") }) end },
		{ "<leader>pWs", function() require("telescope.builtin").grep_string({ search = vim.fn.expand("<cWORD>") }) end },
		{ "<leader>vh", function() require("telescope.builtin").help_tags() end },
		{ "<C-p>", function() require("telescope.builtin").git_files() end },
	},
	config = function()
		require("telescope").setup({})
	end,
}
