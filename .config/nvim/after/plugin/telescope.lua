require('telescope').load_extension('fzf')
local actions = require("telescope.actions")

require('telescope').setup {
	pickers = {
		buffers = { 
			theme = "ivy",
			mappings = {
				i = {
					["<C-d>"] = actions.delete_buffer,
				},
			}
		},
		highlights = { 
			theme = "ivy"
		},
		grep_string = {
			theme = "dropdown"
		},
	}
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>fb',  builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fhi',  builtin.highlights, { desc = 'Telescope highlights' })
