return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		lazy = true,
		dependencies = {'nvim-lua/plenary.nvim'},
		config = function()
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
			vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
			vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
			vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})
			vim.keymap.set('n', '<leader>pw', builtin.grep_string, {})
			vim.keymap.set('n', '<leader>ps', builtin.lsp_document_symbols, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function ()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}
					}
				}
			}
			require("telescope").load_extension("ui-select")
		end,
	},
}
