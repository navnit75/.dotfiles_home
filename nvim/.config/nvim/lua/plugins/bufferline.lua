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
			fill = { bg = "#1E2326" },
			-- Inactive buffers
			background = { bg = "#1E2326", fg = "#859289" },
			buffer_visible = { bg = "#1E2326", fg = "#859289" },
			-- Selected buffer
			buffer_selected = { italic = false, bold = true, bg = "#414B50", fg = "#A7C080" },
			-- Separators
			separator = { bg = "#1E2326", fg = "#1E2326" },
			separator_selected = { bg = "#414B50", fg = "#1E2326" },
			separator_visible = { bg = "#1E2326", fg = "#1E2326" },
			-- Indicators
			indicator_selected = { bg = "#414B50", fg = "#A7C080" },
			indicator_visible = { bg = "#1E2326", fg = "#1E2326" },
			-- Tabs
			tab = { bg = "#1E2326", fg = "#859289" },
			tab_selected = { bg = "#414B50", fg = "#A7C080" },
			tab_separator = { bg = "#1E2326", fg = "#1E2326" },
			tab_separator_selected = { bg = "#414B50", fg = "#1E2326" },
			tab_close = { bg = "#1E2326", fg = "#859289" },
			-- Close buttons
			close_button = { bg = "#1E2326", fg = "#859289" },
			close_button_visible = { bg = "#1E2326", fg = "#859289" },
			close_button_selected = { bg = "#414B50", fg = "#859289" },
			-- Numbers
			numbers = { bg = "#1E2326", fg = "#859289" },
			numbers_visible = { bg = "#1E2326", fg = "#859289" },
			numbers_selected = { italic = false, bg = "#414B50", fg = "#A7C080" },
			-- Diagnostics (inactive)
			diagnostic = { bg = "#1E2326", fg = "#859289" },
			diagnostic_visible = { bg = "#1E2326", fg = "#859289" },
			diagnostic_selected = { italic = false, bg = "#414B50" },
			-- Hints
			hint = { bg = "#1E2326", fg = "#859289" },
			hint_visible = { bg = "#1E2326", fg = "#859289" },
			hint_selected = { italic = false, bg = "#414B50" },
			hint_diagnostic = { bg = "#1E2326", fg = "#859289" },
			hint_diagnostic_visible = { bg = "#1E2326", fg = "#859289" },
			hint_diagnostic_selected = { italic = false, bg = "#414B50" },
			-- Info
			info = { bg = "#1E2326", fg = "#859289" },
			info_visible = { bg = "#1E2326", fg = "#859289" },
			info_selected = { italic = false, bg = "#414B50" },
			info_diagnostic = { bg = "#1E2326", fg = "#859289" },
			info_diagnostic_visible = { bg = "#1E2326", fg = "#859289" },
			info_diagnostic_selected = { italic = false, bg = "#414B50" },
			-- Warnings
			warning = { bg = "#1E2326", fg = "#859289" },
			warning_visible = { bg = "#1E2326", fg = "#859289" },
			warning_selected = { italic = false, bg = "#414B50" },
			warning_diagnostic = { bg = "#1E2326", fg = "#859289" },
			warning_diagnostic_visible = { bg = "#1E2326", fg = "#859289" },
			warning_diagnostic_selected = { italic = false, bg = "#414B50" },
			-- Errors
			error = { bg = "#1E2326", fg = "#859289" },
			error_visible = { bg = "#1E2326", fg = "#859289" },
			error_selected = { italic = false, bg = "#414B50" },
			error_diagnostic = { bg = "#1E2326", fg = "#859289" },
			error_diagnostic_visible = { bg = "#1E2326", fg = "#859289" },
			error_diagnostic_selected = { italic = false, bg = "#414B50" },
			-- Duplicates
			duplicate = { italic = false, bg = "#1E2326", fg = "#859289" },
			duplicate_visible = { italic = false, bg = "#1E2326", fg = "#859289" },
			duplicate_selected = { italic = false, bg = "#414B50", fg = "#859289" },
			-- Modified
			modified = { bg = "#1E2326", fg = "#859289" },
			modified_visible = { bg = "#1E2326", fg = "#859289" },
			modified_selected = { bg = "#414B50" },
			-- Truncation markers
			trunc_marker = { bg = "#1E2326", fg = "#859289" },
			-- Offset separator
			offset_separator = { bg = "#1E2326", fg = "#1E2326" },
		},
	},
}
