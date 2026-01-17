require("config.lazy")
require("config.options")
require("config.keymaps")
require("plugins.themes")

-- vim.cmd.colorscheme("everforest")
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

-- Set cursor to block in all modes
-- vim.opt.guicursor = ""
-- Some configurable settings
vim.opt.guicursor = {
	"n-v-c:block-Cursor", -- Normal, visual, command: block with normal cursor color
	"i-ci-ve:block-rCursor", -- Insert modes: block with insert cursor color
	"r-cr:block-iCursor", -- Replace modes: block with replace cursor color
}

vim.api.nvim_set_hl(0, "iCursor", { bg = "#ff6b6b", fg = "#ffffff" }) -- Replace mode: red
vim.api.nvim_set_hl(0, "rCursor", { bg = "#da9b7b", fg = "#ffffff" }) -- Insert mode: teal

-- Configuration which character to show and how
-- vim.opt.list = true
-- vim.opt.listchars = {
-- 	space = "•",
-- 	trail = "•",
-- }

vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", {})

-- NOTE : Toggle term
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

-- CONFORM
-- Don't return it only configure it
local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		graphql = { "prettier" },
		liquid = { "prettier" },
		python = { "isort", "black" },
		c = { "clang_format" },
		cpp = { "clang_format" },
	},
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file or range (in visual mode)" })
