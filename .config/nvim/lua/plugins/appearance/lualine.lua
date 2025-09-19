return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        options = {
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        always_divide_middle = false,
        always_show_tabline = true,
        globalstatus = true,
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "filename", "branch", "diff" },
            lualine_c = { "lsp_status" },
            lualine_x = { "diagnostics" },
            lualine_y = { "fileformat", "filetype" },
            lualine_z = { "location" },
        },
    },
}
