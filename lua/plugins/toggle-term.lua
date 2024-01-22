return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				open_mapping = [[<c-\>]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				persist_size = true,
				direction = "float",
				close_on_exit = true,
				shell = "zsh", --vim.o.shell,
				float_opts = {
					border = "curved",
					winblend = 3,
				},
			})
			--vim.keymap.set("n", "<C-t>", ":ToggleTerm size=40 direction=horizontal name=desktop", {})
		end,
	},
}
