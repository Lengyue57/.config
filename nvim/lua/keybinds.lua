local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

vim.g.mapleader="<space>"
vim.g.maplocalleader="<space>"

keymap("t", "<ESC>", "<C-\\><C-n>", opt)
keymap("", "<F8>", "<CMD>noh<CR>", opt)

-- 跳转与滚动
keymap("n", "<C-e>", "<C-e><C-e><C-e>0", opt)
keymap("n", "<C-y>", "<C-y><C-y><C-y>0", opt)
keymap("n", "<C-u>", "<C-u>zz0", opt)
keymap("n", "<C-d>", "<C-d>zz0", opt)
keymap("n", "G", "Gzz0", opt)
keymap("n", "{", "{zz", opt)
keymap("n", "}", "}zz", opt)

keymap("", "j", "gj", opt)
keymap("", "k", "gk", opt)
keymap("", "<Up>",   "g<Up>", opt)
keymap("", "<Down>", "g<Down>", opt)

keymap("i", "<A-h>", "<C-o>h", { silent = true })
keymap("i", "<A-j>", "<C-o>j", { silent = true })
keymap("i", "<A-k>", "<C-o>k", { silent = true })
keymap("i", "<A-l>", "<C-o>l", { silent = true })
keymap("i", "<Up>",   "<C-o><Up>", { silent = true })
keymap("i", "<Down>", "<C-o><Down>", { silent = true })

keymap("n",  "n", "gn", opt)
keymap("n",  "N", "gN", opt)
keymap("v",  "n", "<ESC>ngn", opt)
keymap("v",  "N", "<ESC>NgN", opt)
keymap("o",  "n", "gn", opt)
keymap("o",  "N", "gN", opt)

-- 窗格分割
keymap("n", "<A-\">", "<C-w>s", opt)
keymap("n", "<A-|>",  "<C-w>v", opt)

-- 关闭窗格
keymap("n", "<A-c>", "<C-w>q", opt)

-- 窗格跳转
keymap("n", "<A-h>", "<C-w>h", opt)
keymap("n", "<A-j>", "<C-w>j", opt)
keymap("n", "<A-k>", "<C-w>k", opt)
keymap("n", "<A-l>", "<C-w>l", opt)
keymap("n",  "<A-Up>",    "<C-w><Up>", opt)
keymap("n",  "<A-Down>",  "<C-w><Down>", opt)
keymap("n",  "<A-Left>",  "<C-w><Left>", opt)
keymap("n",  "<A-Right>", "<C-w><Right>", opt)

-- 窗格移动
keymap("n", "<A-r>", "<C-w>r", opt)
keymap("n", "<A-H>", "<C-w>H", opt)
keymap("n", "<A-J>", "<C-w>J", opt)
keymap("n", "<A-K>", "<C-w>K", opt)
keymap("n", "<A-L>", "<C-w>L", opt)
keymap("n", "<A-S-Up>", "<C-w>K", opt)
keymap("n", "<A-S-Down>", "<C-w>J", opt)
keymap("n", "<A-S-Left>", "<C-w>H", opt)
keymap("n", "<A-S-Right>", "<C-w>L", opt)

-- 调整窗格大小
keymap("n", "<A-<>", "<C-w><", opt)
keymap("n", "<A->>", "<C-w>>", opt)
keymap("n", "<A-=>", "<C-w>=", opt)
keymap("n", "<A-+>", "<C-w>+", opt)
keymap("n", "<A-->", "<C-w>-", opt)

keymap("v", "<", "<gv", opt)
keymap("v", ">", ">gv", opt)

keymap("n", "<C-\\>", "<CMD>Ex<CR>", opt)
