return {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- não estritamente necessário, mas recomendado
        "MunifTanjim/nui.nvim"
      },
      config = function () 
            vim.keymap.set('n', '<C-b>', ':Neotree filesystem reveal left<CR>', {}) -- <crtl> + b -> open Neotree on the left side
      end     
}
