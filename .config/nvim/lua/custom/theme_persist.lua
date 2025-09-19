local colorscheme_augroup = vim.api.nvim_create_augroup("ColorschemePersistance", { clear = true })
local colorscheme_path = vim.fn.stdpath("config") .. "/lua/config/colorscheme.lua"

vim.api.nvim_create_autocmd("ColorScheme", {

    group = colorscheme_augroup,
    pattern = "*",
    callback = function()
        local current_colorscheme = vim.g.colors_name
        if current_colorscheme then
            vim.fn.writefile({ 'vim.cmd.colorscheme("' .. current_colorscheme .. '")' }, colorscheme_path)
        end
    end,
})
