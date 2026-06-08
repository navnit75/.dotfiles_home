vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.options")
require("config.keymaps")
require("plugins.themes")

-- vim.cmd.colorscheme("everforest")
-- EVERFOREST

vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

-- Set cursor to block in all modes
-- vim.opt.guicursor = ""
-- Some configurable settings
vim.opt.guicursor = {
	"n-v-c:block-Cursor", -- Normal, visual, command: block with normal cursor color
	"i-ci-ve:ver25-rCursor", -- Insert modes: bar with yellow cursor
	"r-cr:block-iCursor", -- Replace modes: block with red cursor
}

vim.api.nvim_set_hl(0, "iCursor", { bg = "#ff6b6b", fg = "#ffffff" }) -- Replace mode: red
vim.api.nvim_set_hl(0, "rCursor", { bg = "#FFFF00", fg = "#000000" }) -- Insert mode: yellow
vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", {})
