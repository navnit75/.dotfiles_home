return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 100,
			open_mapping = [[<C-t>]],
			direction = "float",
			float_opts = {
				border = "curved",
				width = 150,
				height = 30,
			},
			shade_terminals = true,
			terminal_mappings = true,
			insert_mappings = true,
			start_in_insert = true,
			on_create = function(term)
				vim.keymap.set("t", "<esc><esc>", [[<C-\><C-n>]], { buffer = 0 })
			end,
		})

		-- Dedicated kiro-cli terminal (uses terminal ID 99 to keep it completely separate)
		local Terminal = require("toggleterm.terminal").Terminal
		local gemini = Terminal:new({
			cmd = "gemini",
			count = 99,
			hidden = true,
			direction = "float",
			float_opts = {
				border = "rounded",
				width = 150,
				height = 30,
			},
			on_open = function(term)
				vim.cmd("startinsert!")
			end,
		})

		vim.keymap.set("n", "<leader>k", function()
			gemini:toggle()
		end, { desc = "Toggle Kiro CLI terminal" })
	end,
}
