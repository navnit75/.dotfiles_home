return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "luvit-meta/library", words = { "vim%.uv" } },
				},
			},
		},
		{ "Bilal2453/luvit-meta", lazy = true },
	},
	-- NOTE : Step by step guide to install language server
	-- First add it to opts
	-- Then add to the ensure installed
	-- and then call lspconfig.setup({})
	opts = {
		servers = {
			lua_ls = {
				settings = {
					Lua = {
						completion = {
							callSnippet = "Replace",
						},
						diagnostics = {
							disable = { "missing-fields" },
						},
					},
				},
			},
			ts_ls = {},
			pyright = {
				settings = {
					python = {
						analysis = {
							autoSearchPaths = true,
							typeCheckingMode = "basic",
							useLibraryCodeForTypes = true,
						},
					},
				},
			}, -- LSP for Python
			clangd = {
				-- Optional: Customize clangd
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--completion-style=detailed",
					"--function-arg-placeholders",
					"--fallback-style=llvm",
				},
				init_options = {
					usePlaceholders = true,
					completeUnimported = true,
					clangdFileStatus = true,
				},
			},
		},
	},

	config = function(_, opts)
		-- Setup barium (custom LSP for Brazil Config files)
		local lspconfig = require("lspconfig")

		-- This call has to be made for lsp to understand the opts
		-- As we are manually calling this
		lspconfig.ts_ls.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.clangd.setup({})

		-- Setup LSP keybindings
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp-attach-keybinds", { clear = true }),
			callback = function(e)
				-- local client = vim.lsp.get_client_by_id(e.data.client_id)
				-- if client then
				-- 	client.server_capabilities.semanticTokenProvider = nil
				-- end

				local keymap = function(keys, func)
					vim.keymap.set("n", keys, func, { buffer = e.buf })
				end
				local builtin = require("telescope.builtin")

				keymap("gd", builtin.lsp_definitions)
				keymap("gD", vim.lsp.buf.declaration)
				keymap("gr", builtin.lsp_references)
				keymap("gI", builtin.lsp_implementations)
				keymap("<leader>D", builtin.lsp_type_definitions)
				keymap("<leader>ds", builtin.lsp_document_symbols)
				keymap("<leader>ws", builtin.lsp_dynamic_workspace_symbols)
				keymap("<leader>rn", vim.lsp.buf.rename)
				keymap("<leader>ca", vim.lsp.buf.code_action)
				keymap("K", vim.lsp.buf.hover)
			end,
		})
	end,
}
