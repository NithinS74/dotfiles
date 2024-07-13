-- enter insert mode in terminal mode
vim.api.nvim_create_augroup("modal-control",{clear=true})
vim.api.nvim_create_augroup("visuals",{clear=true})

-- start terminal mode in insert mode
vim.api.nvim_create_autocmd("TermOpen",{
	group = "modal-control",
	pattern = "*",
	command = "startinsert | set winfixheight"
})

--hightlight on yank
vim.api.nvim_create_autocmd("TextYankPost",{
	group = "visuals",
	pattern = "*",
	callback = function() vim.highlight.on_yank {timeout = 100} end
})

-- remove highlight when you enter inset mode and move
vim.api.nvim_create_autocmd ("CursorMovedI",{
	group = "visuals",
	pattern = "*",
	callback = function()
		vim.schedule(function()
		vim.cmd('nohlsearch')
	end)
 	end
})
  



