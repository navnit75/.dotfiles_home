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
			buffer_selected = { italic = false },
			diagnostic_selected = { italic = false },
			hint_selected = { italic = false },
			hint_diagnostic_selected = { italic = false },
			info_selected = { italic = false },
			info_diagnostic_selected = { italic = false },
			warning_selected = { italic = false },
			warning_diagnostic_selected = { italic = false },
			error_selected = { italic = false },
			error_diagnostic_selected = { italic = false },
			duplicate_selected = { italic = false },
			duplicate_visible = { italic = false },
			duplicate = { italic = false },
		},
	},
}
