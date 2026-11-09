local map = vim.keymap.set

map({ "n", "i" }, "<C-o>", "<cmd>write<CR>", { desc = "Save (nano WriteOut)" })
map({ "n", "i" }, "<C-x>", "<cmd>confirm quit<CR>", { desc = "Exit" })
map("n", "<C-k>", "dd", { desc = "Cut line" })
map("n", "<C-u>", "p", { desc = "Paste" })
map({ "n", "i" }, "<C-f>", "<Esc>/", { desc = "Find" })
vim.opt.clipboard = "unnamedplus"
map("v", "<C-c>", '"+y', { desc = "Copy" })
