return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- não estritamente necessário, mas recomendado
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true, -- mostrar arquivos ocultos
                    hide_dotfiles = false, -- não ocultar arquivos que começam com '.'
                    hide_gitignored = false, -- não ocultar arquivos ignorados pelo gitignore
                },
            },
        })

        -- <crtl> + b -> open Neotree on the left side
        -- vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal left<CR>",{})
        -- <ctrl> + b -> open/close Neotree
        vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", { noremap = true, silent = true })
    end,
}
