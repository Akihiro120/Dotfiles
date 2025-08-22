return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-cmdline", -- for : and /
        },
        opts = function()
            require "custom.configs.cmp"
        end,
    },
}
