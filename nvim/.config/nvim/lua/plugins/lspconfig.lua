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
		{ "Bilal2453/luvit-meta", lazy = true }
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
			ruff = {}, -- Linter for Python
			clangd = {
				-- Optional: Customize clangd
				cmd = {
					"clangd",
					"--background-index",
					"--header-insertion=iwyu",
					"--completion-style=bundled",
					"--fallback-style=llvm",
				},
				init_options = {
					usePlaceholders = true,
					completeUnimported = true,
					clangdFileStatus = true,
				},
			},
		},
		setup = {
			jdtls = function()
				return true
			end,
		},
	},

	config = function(_, opts)
		vim.lsp.set_log_level("off")

		local lspconfig = require("lspconfig")
		local configs = require("lspconfig.configs")

		vim.filetype.add({
			filename = {
				["Config"] = function()
					vim.b.brazil_package_Config = 1
					return "brazil-config"
				end,
			},
		})

		configs.barium = {
			default_config = {
				cmd = { "barium" },
				filetypes = { "brazil-config" },
				root_dir = function(fname)
					return lspconfig.util.find_git_ancestor(fname)
				end,
				settings = {},
			},
		}

		-- This call has to be made for lsp to understand the opts
		-- As we are manually calling this
		lspconfig.barium.setup({})
		lspconfig.ts_ls.setup({
	on_attach = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
})
		lspconfig.lua_ls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.ruff.setup({})
		lspconfig.clangd.setup({})

		-- Setup LSP keybindings
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("lsp-attach-keybinds", { clear = true }),
			callback = function(e)
				local client = vim.lsp.get_client_by_id(e.data.client_id)
				if client then
					client.server_capabilities.semanticTokensProvider = nil
					client.server_capabilities.documentHighlightProvider = nil
				end

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
