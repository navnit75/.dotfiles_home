return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	keys = {
		{ "<leader>tt", function() require("trouble").toggle() end, desc = "Toggle Trouble" },
		{ "[t", function() require("trouble").next({ skip_groups = true, jump = true }) end, desc = "Next trouble item" },
		{ "]t", function() require("trouble").previous({ skip_groups = true, jump = true }) end, desc = "Prev trouble item" },
	},
	opts = {},
}
