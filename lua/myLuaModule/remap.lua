local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>o", vim.cmd.Rex)
keymap.set("n", "<leader>o", vim.cmd.bd)

keymap.set("n", "<leader>h", ":Stdheader<CR>")
keymap.set("n", "<leader>g", "gg=G")
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

keymap.set("n", "<C-j>", "<cmd>m +1 <CR>")
keymap.set("n", "<C-k>", "<cmd>m.-2 <CR>")
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
