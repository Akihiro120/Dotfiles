return {
    "kdheepak/tabline.nvim",
    event = "VimEnter",
    dependencies = {
        "nvim-lualine/lualine.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("tabline").setup({
            -- Defaults configuration options
            enable = true,
            options = {
                max_bufferline_percent = 66,
                show_tabs_always = true,
                show_devicons = true,
                show_bufnr = false,
                show_filename_only = true,
                modified_icon = "+ ",
                modified_italic = false,
                show_tabs_only = false,
            },
        })
        vim.cmd([[
            set guioptions-=e " Use showtabline in gui vim
            set sessionoptions+=tabpages,globals " store tabpages and globals in session
        ]])
    end,
}
