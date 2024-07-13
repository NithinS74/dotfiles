local function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


-- navigation
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

-- some command shortcuts
Map("n","<leader>o",":Ex<CR>")

-- recenter the buffer
Map("n","n","nzz")
Map("n","N","nzz")
Map("n","<C-d>","<C-d>zz")
Map("n","<C-u>","<C-u>zz")

-- resize
Map("n", "<C-Up>", ":resize -2<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")

-- move text / editing
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- buffer navigation
Map("n", "<TAB>", ":bn<CR>")
Map("n", "<S-TAB>", ":bp<CR>")
Map("n", "<leader>bd", ":bd<CR>") -- from Doom Emacs

-- terminal mode
Map("n", "<C-t>", ":vsplit | :terminal<CR>")
Map("t", "<C-t>", "<C-d>")
