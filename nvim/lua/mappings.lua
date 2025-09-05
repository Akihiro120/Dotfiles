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

for i = 1, 9 do
    vim.keymap.set("n", string.format("<leader>%s", i), function()
        local bufs = vim.t.bufs
        if bufs and bufs[i] and vim.api.nvim_buf_is_valid(bufs[i]) then
            vim.api.nvim_set_current_buf(bufs[i])
        else
            vim.notify(string.format("No buffer at slot %d", i), vim.log.levels.WARN)
        end
    end, { desc = "Go to buffer " .. i })
end
