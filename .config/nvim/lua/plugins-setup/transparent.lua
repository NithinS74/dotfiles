return{
 "xiyaowong/transparent.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("transparent").setup({ -- Optional, you don't have to run setup.
			groups = { -- table: default groups
				'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
				'Statement', 'PreProc', 'Type', 'FloatTitle','FloatFooter', 'Todo', 'String', 'Function',
				'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
				'SignColumn',  'StatusLine', 'StatusLineNC',
				'EndOfBuffer',
			},
			extra_groups = {}, -- table: additional groups that should be cleared
			exclude_groups = {}, -- table: groups you don't want to clear
		})
end,
}
