return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"nvim-treesitter/nvim-treesitter-refactor",
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"lua",
				"c_sharp",
				"json",
				"yaml",
				"toml",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"rust",
				"cpp",
				"python",
				"java",
				"bash",
				"lua",
				"vim",
				"go",
				"php",
				"ruby",
				"regex",
				"comment",
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["aa"] = "@parameter.outer",
						["ia"] = "@parameter.inner",
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
						["ii"] = "@conditional.inner",
						["ai"] = "@conditional.outer",
						["il"] = "@loop.inner",
						["al"] = "@loop.outer",
						["at"] = "@comment.outer",
					},
				},
				swap = {
					enable = true,
					swap_next = {
						["<leader>sn"] = "@parameter.inner",
					},
					swap_previous = {
						["<leader>sp"] = "@parameter.inner",
					},
				},
				move = {
					enable = true,
					set_jumps = true,
					goto_next_start = {
						["]m"] = "@function.outer",
						["]]"] = "@class.outer",
					},
					goto_next_end = {
						["]M"] = "@function.outer",
						["]["] = "@class.outer",
					},
					goto_previous_start = {
						["[m"] = "@function.outer",
						["[["] = "@class.outer",
					},
					goto_previous_end = {
						["[M"] = "@function.outer",
						["[]"] = "@class.outer",
					},
				},
				refactor = {
					highlight_definitions = { enable = true },
					highlight_current_scope = { enable = true },
				},
				autotag = {
					enable = true,
				},
			},
		})
	end,
}
