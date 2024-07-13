return {
--	{ "rose-pine/neovim", name = "rose-pine",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		vim.cmd("colorscheme rose-pine")
--	end,
--}
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			-- use the night style
			style = "night",
			transparent =true,
			-- disable italic for functions
			styles = {
				functions = {}
			},
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			on_colors = function(colors)
				colors.hint = colors.orange
				colors.error = "#ff0000"
			end,
			cache = true,
			 auto = true,
			telescope = true,
		})
		vim.cmd("colorscheme tokyonight")
	end,
	opts = {},
}
