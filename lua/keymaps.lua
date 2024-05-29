----Normal Mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>Lazy <CR>")
vim.keymap.set("n", "<leader>m", "<cmd>Mason <CR>")
vim.keymap.set("n", "<leader>w", "<cmd>w <CR>")
vim.keymap.set("n", "<leader>fw", "<cmd>w! <CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q <CR>")
vim.keymap.set("n", "<leader>fq", "<cmd>q! <CR>")

vim.keymap.set("n", "g;", "$")
vim.keymap.set("n", "ga", "0")

vim.keymap.set("n", "<leader>cc", ":")

--Better window movement
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<S-h>", "<cmd>bp<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>bn<CR>")
vim.keymap.set("n", "<S-q>", "<cmd>bd<CR>")

vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

--Insert Mode
--vim.keymap.set("i", ";", "<escape>")

--Visual Mode
vim.keymap.set("v", "<A-j>", "<S-v><cmd>m +1<CR>")
vim.keymap.set("v", "<A-k>", "<S-v><cmd>m -1<CR>")
