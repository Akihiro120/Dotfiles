local get_hl = function(group, attr)
    local ok, hl = pcall(vim.api.nvim_get_hl_by_name, group, true)
    if ok and hl[attr] then
        return string.format("#%06x", hl[attr])
    else
        return nil
    end
end

local fg = get_hl("Normal", "foreground")
local bg = get_hl("Normal", "normal")
local inactive_fg = get_hl("Normal", "comment")
local inactive_bg = get_hl("Normal", "background")

return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local bufferline = require("bufferline")
        local style = bufferline.style_preset

        bufferline.setup({
            options = {
                show_buffer_icons = true,
                style_preset = {
                    style.no_italic,
                    style.minimal,
                },
            },
            highlights = {
                fill = {
                    fg = fg,
                    bg = bg,
                },
                background = {
                    fg = inactive_fg,
                    bg = inactive_bg,
                },
                buffer_visible = {
                    fg = inactive_fg,
                    bg = inactive_bg,
                },
                buffer_selected = {
                    fg = fg,
                    bg = bg,
                    bold = true,
                },
                close_button = {
                    fg = inactive_fg,
                    bg = inactive_bg,
                },
                close_button_visible = {
                    fg = inactive_fg,
                    bg = inactive_bg,
                },
                close_button_selected = {
                    fg = fg,
                    bg = bg,
                },
                indicator_selected = {
                    fg = fg,
                    bg = bg,
                },
            },
        })
    end,
}
