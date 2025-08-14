require("noice").setup({
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	presets = {
		bottom_search = true,
		command_palette = true,
		lsp_doc_border = true,
	},
	messages = {
		enabled = false,
	},
	redirect = {
		view = "popup",
		filter = { event = "msg_show" },
	},
	cmdline = {
		enabled = true,
		view = "cmdline_popup",
	},
	popupmenu = {
		enabled = true,
		backend = "nui",
	},
})
