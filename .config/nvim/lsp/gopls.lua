local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.semanticTokens = {
	dynamicRegistration = true,
	requests = {
		range = true,
		full = { delta = true }
	},
	tokenTypes = {
		"namespace", "type", "class", "enum", "interface",
		"struct", "typeParameter", "parameter", "variable",
		"property", "enumMember", "event", "function",
		"method", "macro", "keyword", "modifier", "comment",
		"string", "number", "regexp", "operator"
	},
	tokenModifiers = {
		"declaration", "definition", "readonly", "static",
		"deprecated", "abstract", "async", "modification",
		"documentation", "defaultLibrary"
	},
	formats = { "relative" },
}

return {
	cmd = { 'gopls' },
	filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
	root_markers = { 'go.mod', '.git' },
	capabilities = capabilities,
	settings = {
		gopls = { semanticTokens = true }
	}
}
