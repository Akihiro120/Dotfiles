return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
        vim.diagnostic.config({ virtual_text = false }) -- Disable default virtual text
        require("tiny-inline-diagnostic").setup({
            preset = "classic",
            transparent_cursorline = true,
            transparent_bg = true,
            options = {
                multilines = {
                    enabled = true,
                    always_show = false,
                    trim_whitespaces = false,
                    tabstop = 4,
                },
            },
            show_all_diags_on_cursorline = true,
            throttle = 0,
            enable_on_select = true,
            enable_on_insert = true,
        })
    end,
}
