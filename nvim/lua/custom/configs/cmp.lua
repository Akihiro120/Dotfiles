local cmp = require "cmp"

-- keep NvChad defaults
require "nvchad.configs.cmp"

-- : commandline completion
cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
    matching = { disallow_symbol_nonprefix_matching = false },
})
