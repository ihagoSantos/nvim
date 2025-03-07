return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- require cmp_nvim_lsp thats is installed on completions.lua file
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- install lsp to lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			-- install lsp to tsserver
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- Display docs of function in lua pressing <shift> + k
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- go to definition
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			-- go to references
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			-- code_actions
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
