return { 
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function () 
		-- setup for treesitter
		  local config = require("nvim-treesitter.configs")
		config.setup({
		  -- ensure_installed = {"lua", "javascript", "query", "html", "csv", "css", "json", "python", "typescript", "yaml"}, -- ensure that the parsers for lua and javascript are installed
          
          auto_install = true, -- automatically install when treesitter encounters a new language

		  highlight = { enable = true }, -- taks a lua table to configure highlighting
		  ident = { enable = true }
		})
	end
}
