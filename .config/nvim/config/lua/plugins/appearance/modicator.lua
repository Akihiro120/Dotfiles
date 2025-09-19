return {
    "mawkler/modicator.nvim",
    init = function()
        -- These are required for Modicator to work
        vim.o.cursorline = true
        vim.o.number = true
        vim.o.termguicolors = true
    end,
    opts = {
        integration = {
            lualine = {
                enabled = true,
                mode_section = nil,
                highlight = "bg",
            },
        },
    },
}
