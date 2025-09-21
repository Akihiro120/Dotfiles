local keymap = vim.keymap.set

-- telescope
local telescope = require("telescope.builtin")
keymap("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>th", telescope.colorscheme, { desc = "Telescope colorscheme" })
keymap("n", "<leader>ee", ":Telescope file_browser<CR>", { desc = "Telescope colorscheme" })

-- bufferline
keymap("n", "<Tab>", ":TablineBufferNext<CR>", { desc = "Goto next tabe" })
keymap("n", "<S-Tab>", ":TablineBufferPrevious<CR>", { desc = "Goto previous tab" })
keymap("n", "<leader>wd", "<Cmd>bdelete<CR>", { desc = "Close current tab" })

-- overseer
keymap("n", "<leader>bb", ":OverseerRun<CR>", { desc = "Overseer Run" })
keymap("n", "<leader>bc", ":OverseerClose<CR>", { desc = "Overseer Close" })
keymap("n", "<leader>bo", ":OverseerOpen<CR>", { desc = "Overseer Open" })
