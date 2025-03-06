return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function ()
	-- set the colorscheme to it!
	vim.cmd.colorscheme "catppuccin"
    end
}
