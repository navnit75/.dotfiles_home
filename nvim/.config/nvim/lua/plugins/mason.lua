return {
	{
		"mason-org/mason-lspconfig.nvim",
		-- LSPs installed
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"pyright",
				"clangd",
			},
		},
	},
	-- Formatter installed
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"clang-format",
			},
		},
	},
}
