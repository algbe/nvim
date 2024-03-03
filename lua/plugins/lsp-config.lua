return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				highlight = { enabled = true },
				indent = { enabled = true },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			local util = require("lspconfig.util")

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.csharp_ls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				root_dir = util.root_pattern("tsconfig.base.json", "tsconfig.json", "package.json", ".git"),
			})
			lspconfig.intelephense.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", function()
				require("telescope.builtin").lsp_references()
			end, {})

			vim.keymap.set("n", "<leader>ep", vim.diagnostic.goto_prev, { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>en", vim.diagnostic.goto_next, { noremap = true, silent = true })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

			local _border = "single"
			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = _border,
			})

			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = _border,
			})

			vim.diagnostic.config({
				float = { border = _border },
			})
		end,
	},
}
