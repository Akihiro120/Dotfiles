return {
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()

        local servers = { "html", "cssls", "clangd", "omnisharp", "rust_analyzer" }
        vim.lsp.enable(servers)

        -- read :h vim.lsp.config for changing options of lsp servers
        -- require("lspconfig").lua_ls.setup {}
        -- require("lspconfig").clangd.setup {}
        -- require("lspconfig").omnisharp.setup {}
        -- require("rust-analyzer").rust_analyzer.setup {}
    end,
}
