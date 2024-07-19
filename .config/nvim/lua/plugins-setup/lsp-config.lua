return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "clangd","pyright","lua_ls" }
			})
		end,

	},
	{
		    "neovim/nvim-lspconfig",
			config = function()
				local lspconfig = require("lspconfig")
				local capabilities = require('cmp_nvim_lsp').default_capabilities
				lspconfig.lua_ls.setup({capabilities=capabilities})
				lspconfig.clangd.setup({capabilities=capabilities})
				lspconfig.pyright.setup({capabilities=capabilities})
				vim.keymap.set('n','mi', vim.lsp.buf.hover,{})
				vim.keymap.set('n','md', vim.lsp.buf.definition,{})
				vim.keymap.set({'n','v'},'<leader>ma', vim.lsp.buf.code_action,{})
			end,
	}



}

