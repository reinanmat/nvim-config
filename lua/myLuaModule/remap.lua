vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", "m: '>+1<CR>gv=gv")
vim.keymap.set("v", "K", "m: '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>h", ":Stdheader<CR>")
vim.keymap.set("n", "<leader>g", "gg=G")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

