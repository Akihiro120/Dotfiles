require("config.lazy")
require("config.mappings")
require("config.options")
require("config.colorscheme")
require("custom.theme_persist")

local dashboard = require("alpha.themes.dashboard")

-- header
local header = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- generate a random quote
math.randomseed(os.time())
local random = math.random(0, 50)
local quote = require("config.quotes")[random]
dashboard.section.header.val = header
dashboard.section.header.opts = {
    hl = "Keyword",
    position = "center",
}

-- buttons
dashboard.section.buttons.val = {
    {
        type = "text",
        val = "[" .. quote .. "]",
        opts = {
            hl = "SpecialComment",
            position = "center",
        },
    },
    dashboard.button("leader ee", "Telescope File Browser"),
    dashboard.button("leader ff", "Telescope Find Files"),
    dashboard.button(":q", "Quit"),
}

-- footer
local lazy_info = function()
    local plugins = #vim.tbl_keys(require("lazy").plugins())
    local v = vim.version()
    local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
    local platform = vim.fn.has("win32") == 1 and "" or ""
    return string.format(" %d plugins  %s %d.%d.%d  %s", plugins, platform, v.major, v.minor, v.patch, datetime)
end

dashboard.section.footer.val = lazy_info()
dashboard.section.footer.opts.hl = "Comment"

-- load dashboard
require("alpha").setup(dashboard.opts)

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
