vim.g.mapleader = " "       -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 10
vim.opt.termguicolors =
--vim.opt.splitbelow = true
--vim.opt.splitright = true


--Normal Mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<leader>e", '<cmd>Lex 20 <CR>')
vim.keymap.set("n", "<leader>l", '<cmd>Lazy <CR>')
vim.keymap.set("n", "<leader>m", '<cmd>Mason <CR>')
vim.keymap.set("n", "<leader>ww", '<cmd>w <CR>')
vim.keymap.set("n", "<leader>wf", '<cmd>w! <CR>')
vim.keymap.set("n", "<leader>qq", '<cmd>q <CR>')
vim.keymap.set("n", "<leader>qf", '<cmd>q! <CR>')


vim.keymap.set("n", "<C-h>", '<C-w>h')
vim.keymap.set("n", "<C-j>", '<C-w>j')
vim.keymap.set("n", "<C-k>", '<C-w>k')
vim.keymap.set("n", "<C-l>", '<C-w>l')

vim.keymap.set("n", "<C-Up>", '<cmd>resize -2<CR>')
vim.keymap.set("n", "<C-Down>", '<cmd>resize +2<CR>')
vim.keymap.set("n", "<C-Left>", '<cmd>vertical resize -2<CR>')
vim.keymap.set("n", "<C-Right>", '<cmd>vertical resize +2<CR>')

vim.keymap.set("n", "<S-Right>", '<cmd>vertical resize +2<CR>')
vim.keymap.set("n", "<S-Right>", '<cmd>vertical resize +2<CR>')

vim.keymap.set("n", "<leader>qf", '<cmd>q! <CR>')
vim.keymap.set("n", "<leader>qf", '<cmd>q! <CR>')

--Insert Mode
vim.keymap.set("i", ";", '<escape>')


--Visutal Mode
--vim.keymap.set("v", "<A-j>", '<cmd>m +1<CR>')
--vim.keymap.set("v", "<A-k>", '<cmd>m -2<CR>')
