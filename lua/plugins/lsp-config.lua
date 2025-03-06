return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            -- install lsp to lua
            lspconfig.lua_ls.setup({})
            -- install plp to tsserver
            lspconfig.ts_ls.setup({})

            -- Display docs of function in lua pressing <shift> + k
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            -- go to definition
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            -- code_actions
            vim.keymap.set({ 'n' },  '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
