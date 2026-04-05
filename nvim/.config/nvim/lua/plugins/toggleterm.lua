return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 100,
				open_mapping = [[<C-t>]],
				direction = "float",
				float_opts = {
					border = "curved",
					width = function()
						return math.floor(vim.o.columns * 0.8)
					end,
					height = function()
						return math.floor(vim.o.lines * 0.8)
					end,
				},
				shade_terminals = true,
				terminal_mappings = true,
				insert_mappings = true,
				start_in_insert = true,
				on_create = function(term)
					vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { buffer = 0 })
					vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = 0 })
				end,
			})

			-- Dedicated kiro-cli terminal (uses terminal ID 99 to keep it completely separate)
			local Terminal = require("toggleterm.terminal").Terminal
			local kiro_term = Terminal:new({
				cmd = "opencode",
				count = 99,
				hidden = true,
				direction = "float",
				float_opts = {
					border = "rounded",
					width = function()
						return math.floor(vim.o.columns * 0.8)
					end,
					height = function()
						return math.floor(vim.o.lines * 0.8)
					end,
				},
				on_open = function(term)
					vim.cmd("startinsert!")
				end,
			})

			vim.keymap.set("n", "<leader>k", function()
				kiro_term:toggle()
			end, { desc = "Toggle Kiro CLI terminal" })
		end,
	},
}
