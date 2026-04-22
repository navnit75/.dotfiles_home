return {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			mode = "buffers",
			separator_style = "thick",
			show_buffer_close_icons = false,
			show_close_icon = false,
			truncate_names = false,
		},
        highlights = {
			-- Bar fill
			fill = { bg = "#080808" },
			-- Inactive buffers
			background = { bg = "#080808", fg = "#b2b2b2" },
			buffer_visible = { bg = "#080808", fg = "#b2b2b2" },
			-- Selected buffer
			buffer_selected = { italic = false, bold = true, bg = "#303030", fg = "#80a0ff" },
			-- Separators
			separator = { bg = "#080808", fg = "#080808" },
			separator_selected = { bg = "#303030", fg = "#080808" },
			separator_visible = { bg = "#080808", fg = "#080808" },
			-- Indicators
			indicator_selected = { bg = "#303030", fg = "#80a0ff" },
			indicator_visible = { bg = "#080808", fg = "#080808" },
			-- Tabs
			tab = { bg = "#080808", fg = "#b2b2b2" },
			tab_selected = { bg = "#303030", fg = "#80a0ff" },
			tab_separator = { bg = "#080808", fg = "#080808" },
			tab_separator_selected = { bg = "#303030", fg = "#080808" },
			tab_close = { bg = "#080808", fg = "#b2b2b2" },
			-- Close buttons
			close_button = { bg = "#080808", fg = "#b2b2b2" },
			close_button_visible = { bg = "#080808", fg = "#b2b2b2" },
			close_button_selected = { bg = "#303030", fg = "#b2b2b2" },
			-- Numbers
			numbers = { bg = "#080808", fg = "#b2b2b2" },
			numbers_visible = { bg = "#080808", fg = "#b2b2b2" },
			numbers_selected = { italic = false, bg = "#303030", fg = "#80a0ff" },
			-- Diagnostics (inactive)
			diagnostic = { bg = "#080808", fg = "#b2b2b2" },
			diagnostic_visible = { bg = "#080808", fg = "#b2b2b2" },
			diagnostic_selected = { italic = false, bg = "#303030" },
			-- Hints
			hint = { bg = "#080808", fg = "#b2b2b2" },
			hint_visible = { bg = "#080808", fg = "#b2b2b2" },
			hint_selected = { italic = false, bg = "#303030" },
			hint_diagnostic = { bg = "#080808", fg = "#b2b2b2" },
			hint_diagnostic_visible = { bg = "#080808", fg = "#b2b2b2" },
			hint_diagnostic_selected = { italic = false, bg = "#303030" },
			-- Info
			info = { bg = "#080808", fg = "#b2b2b2" },
			info_visible = { bg = "#080808", fg = "#b2b2b2" },
			info_selected = { italic = false, bg = "#303030" },
			info_diagnostic = { bg = "#080808", fg = "#b2b2b2" },
			info_diagnostic_visible = { bg = "#080808", fg = "#b2b2b2" },
			info_diagnostic_selected = { italic = false, bg = "#303030" },
			-- Warnings
			warning = { bg = "#080808", fg = "#b2b2b2" },
			warning_visible = { bg = "#080808", fg = "#b2b2b2" },
			warning_selected = { italic = false, bg = "#303030" },
			warning_diagnostic = { bg = "#080808", fg = "#b2b2b2" },
			warning_diagnostic_visible = { bg = "#080808", fg = "#b2b2b2" },
			warning_diagnostic_selected = { italic = false, bg = "#303030" },
			-- Errors
			error = { bg = "#080808", fg = "#b2b2b2" },
			error_visible = { bg = "#080808", fg = "#b2b2b2" },
			error_selected = { italic = false, bg = "#303030" },
			error_diagnostic = { bg = "#080808", fg = "#b2b2b2" },
			error_diagnostic_visible = { bg = "#080808", fg = "#b2b2b2" },
			error_diagnostic_selected = { italic = false, bg = "#303030" },
			-- Duplicates
			duplicate = { italic = false, bg = "#080808", fg = "#b2b2b2" },
			duplicate_visible = { italic = false, bg = "#080808", fg = "#b2b2b2" },
			duplicate_selected = { italic = false, bg = "#303030", fg = "#b2b2b2" },
			-- Modified
			modified = { bg = "#080808", fg = "#b2b2b2" },
			modified_visible = { bg = "#080808", fg = "#b2b2b2" },
			modified_selected = { bg = "#303030" },
			-- Truncation markers
			trunc_marker = { bg = "#080808", fg = "#b2b2b2" },
			-- Offset separator
			offset_separator = { bg = "#080808", fg = "#080808" },
		},
	},
}
