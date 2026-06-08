return {

	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
	init = function()
		vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { bold = true })
	end,
	keys = {
		{ "<leader>ss", "<cmd>Neotree document_symbols toggle position=left<cr>", desc = "Document Symbols" },
	},
	opts = {
		sources = { "filesystem", "buffers", "document_symbols" },
		close_if_last_window = true,
		hide_root_node = false,
		window = {
			position = "left",
			width = 30,
			auto_expand_width = true,
		},
		filesystem = {
			components = {
				name = function(config, node, state)
					if node:get_depth() == 1 then
						return {
							text = vim.fn.fnamemodify(state.path, ":t"),
							highlight = "NeoTreeRootName",
						}
					end
					return require("neo-tree.sources.common.components").name(config, node, state)
				end,
				indent = function(config, node, state)
					local depth = node:get_depth()
					if depth <= 1 then
						return { text = "" }
					end

					local hl = "NeoTreeIndentMarker"
					local parts = {}
					local tree = state.tree

					-- Build guide for each ancestor level
					for i = 2, depth - 1 do
						-- Check if ancestor at this level is the last sibling
						local ancestor = node
						for _ = 1, (depth - i) do
							ancestor = tree:get_node(ancestor:get_parent_id())
						end
						local parent = tree:get_node(ancestor:get_parent_id())
						local siblings = tree:get_nodes(parent:get_id())
						local is_last = siblings[#siblings]:get_id() == ancestor:get_id()
						table.insert(parts, { text = is_last and "   " or "│  ", highlight = hl })
					end

					-- Connector for this node
					local parent = tree:get_node(node:get_parent_id())
					local siblings = tree:get_nodes(parent:get_id())
					local is_last = siblings[#siblings]:get_id() == node:get_id()
					table.insert(parts, { text = is_last and "└─ " or "├─ ", highlight = hl })

					return parts
				end,
			},
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = true,
			},
		},
		default_component_configs = {
			file_size = { enabled = false },
			last_modified = { enabled = false },
			type = { enabled = false },
			git_status = { enabled = false },
			indent = {
				with_markers = false,
				with_expanders = false,
				indent_size = 0,
				padding = 0,
			},
		},
	},
}
