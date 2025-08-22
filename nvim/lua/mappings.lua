require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--  tree
vim.keymap.del("n", "<leader>e")
map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
map("n", "<leader>ec", "<cmd>NvimTreeClose<CR>", { desc = "Close NvimTree" })

-- buffer
vim.keymap.del("n", "<leader>x")
map("n", "<leader>wd", function()
    require("nvchad.tabufline").close_buffer()
end, { desc = "Close buffer", silent = true })

local tabuf = require "nvchad.tabufline"

-- for i = 1, 9 do
--     map("n", "<leader>" .. i, function()
--         tabuf.goto_tab(i)
--     end, { desc = "Go to buffer " .. i, silent = true })
-- end
