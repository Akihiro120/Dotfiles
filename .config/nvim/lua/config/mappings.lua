local keymap = vim.keymap.set

-- telescope
local telescope = require("telescope.builtin")
keymap("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>th", telescope.colorscheme, { desc = "Telescope colorscheme" })
keymap("n", "<leader>ee", ":Telescope file_browser<CR>", { desc = "Telescope colorscheme" })

-- bufferline
keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { desc = "Goto tab 1" })
keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { desc = "Goto tab 2" })
keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { desc = "Goto tab 3" })
keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { desc = "Goto tab 4" })
keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { desc = "Goto tab 5" })
keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { desc = "Goto tab 6" })
keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { desc = "Goto tab 7" })
keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { desc = "Goto tab 8" })
keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { desc = "Goto tab 9" })
keymap("n", "<leader>wd", "<Cmd>bdelete<CR>", { desc = "Close current tab" })
