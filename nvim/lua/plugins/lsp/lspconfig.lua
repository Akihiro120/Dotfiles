return {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()

        local servers = { "html", "cssls", "clangd", "omnisharp" }
        vim.lsp.enable(servers)

        -- read :h vim.lsp.config for changing options of lsp servers
        -- require("lspconfig").lua_ls.setup {}
        -- require("lspconfig").clangd.setup {}
        -- require("lspconfig").omnisharp.setup {}
    end,
}
