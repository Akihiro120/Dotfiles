return {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = {
        "rafamadriz/friendly-snippets",
        "L3MON4D3/LuaSnip",
        "onsails/lspkind.nvim",
    },

    -- use a release tag to download pre-built binaries
    version = "1.*",
    opts = {
        keymap = {
            preset = "none",
            ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<C-e>"] = { "hide", "fallback" },
            ["<CR>"] = { "accept", "fallback" },

            ["<Tab>"] = { "select_next", "fallback" },
            ["<S-Tab>"] = { "select_prev", "fallback" },

            ["<C-k>"] = { "scroll_documentation_up", "fallback" },
            ["<C-j>"] = { "scroll_documentation_down", "fallback" },
        },
        appearance = {
            nerd_font_variant = "mono",
            use_nvim_cmp_as_default = true,
        },
        completion = {
            documentation = {
                treesitter_highlighting = true,
                auto_show = true,
                window = {
                    border = "single",
                },
            },
            menu = {
                scrollbar = false,
                border = "single",
                min_width = 25,
                draw = {
                    components = {
                        kind_icon = {
                            text = function(ctx)
                                local icon = ctx.kind_icon
                                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                                    local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                                    if dev_icon then
                                        icon = dev_icon
                                    end
                                else
                                    icon = require("lspkind").symbolic(ctx.kind, {
                                        mode = "symbol",
                                    })
                                end

                                return icon .. ctx.icon_gap
                            end,

                            highlight = function(ctx)
                                local hl = ctx.kind_hl
                                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                                    local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                                    if dev_icon then
                                        hl = dev_hl
                                    end
                                end
                                return hl
                            end,
                        },
                    },
                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 1 },
                        { "kind" },
                    },
                },
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
        fuzzy = {
            implementation = "prefer_rust_with_warning",
        },
        snippets = {
            preset = "luasnip",
        },
        cmdline = {
            completion = {
                menu = {
                    auto_show = true,
                },
            },
        },
    },
    opts_extend = {
        "sources.default",
    },
}
