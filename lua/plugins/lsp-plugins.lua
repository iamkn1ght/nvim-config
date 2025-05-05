return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"cssls",
					"html",
					"ast_grep",
					"ltex",
					"remark_ls",
					"powershell_es",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
    config = function()

      local capabilities = require('cmp_nvim_lsp').default_capabililties
			local lspconfig = require("lspconfig")
      lspconfig.ts_ls.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.cssls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.ast_grep.setup({ capabilities = capabilities })
			lspconfig.ltex.setup({ capabilities = capabilities })
			lspconfig.remark_ls.setup({ capabilities = capabilities })
			lspconfig.powershell_es.setup({ capabilities = capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
