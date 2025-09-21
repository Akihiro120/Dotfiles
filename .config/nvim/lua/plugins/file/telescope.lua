return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            pickers = {
                colorscheme = {
                    enable_preview = true,
                },
                find_files = {},
            },
            defaults = {
                layout_strategy = "horizontal", -- could also be "vertical"
                layout_config = {
                    prompt_position = "top", -- put search box at the top
                },
                sorting_strategy = "ascending", -- ensures results grow downward
                borderchars = {
                    prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                    results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                    preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                },
            },
        },
        config = function(_, opts)
            require("telescope").setup(opts)
        end,
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    file_browser = require("plugins.file.extensions.file_browser"),
                },
            })
            require("telescope").load_extension("file_browser")
        end,
    },
}
