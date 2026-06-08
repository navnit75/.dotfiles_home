local vault = vim.fn.expand("~/Documents/Obsidian_Vault/Work")

return {
	"obsidian-nvim/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	cmd = { "Obsidian" },
	event = {
		"BufReadPre " .. vault .. "/**.md",
		"BufNewFile " .. vault .. "/**.md",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian quick switch" },
		{ "<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian new note" },
		{ "<leader>os", "<cmd>Obsidian search<cr>", desc = "Obsidian search" },
		{ "<leader>ot", "<cmd>Obsidian tags<cr>", desc = "Obsidian tags" },
		{ "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian backlinks" },
		{ "<leader>ol", "<cmd>Obsidian links<cr>", desc = "Obsidian outgoing links" },
		{ "<leader>or", "<cmd>Obsidian rename<cr>", desc = "Obsidian rename" },
		{ "<leader>op", "<cmd>Obsidian open<cr>", desc = "Obsidian paste image" },
	},
	opts = {
		workspaces = {
			{ name = "Work", path = vault },
		},
		completion = {
			nvim_cmp = false,
			blink = true,
			min_chars = 2,
		},
		picker = {
			name = "telescope.nvim",
		},
		ui = { enable = false },
	},
	config = function(_, opts)
		require("obsidian").setup(opts)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function(ev)
				if vim.startswith(vim.api.nvim_buf_get_name(ev.buf), vault) then
					vim.keymap.set("n", "gf", function()
						if require("obsidian").util.cursor_on_markdown_link() then
							return "<cmd>Obsidian follow_link<cr>"
						end
						return "gf"
					end, { buffer = ev.buf, expr = true, desc = "Obsidian follow link" })
				end
			end,
		})
	end,
}
