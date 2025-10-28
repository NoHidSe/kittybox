-- Plugin: mason-org/mason-lspconfig.nvim
-- Installed via store.nvim

return {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0" ,
    opts = {},
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {}
        },
        "neovim/nvim-lspconfig"
    }
}
