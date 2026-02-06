return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp"
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup(
                {ensure_installed = {"lua_ls", "ts_ls", "jsonls", "yamlls", "dockerls"}, automatic_installation = true}
            )
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
            vim.lsp.config("lua_ls", {capabilities = capabilities})
            vim.lsp.config("ts_ls", {capabilities = capabilities})
            vim.lsp.config("jsonls", {capabilities = capabilities})
            vim.lsp.config("yamlls", {capabilities = capabilities})
            vim.lsp.config("dockerls", {capabilities = capabilities})
            vim.lsp.enable({"lua_ls", "ts_ls", "jsonls", "yamlls", "dockerls"})
        end
    }
}

