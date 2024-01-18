return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			term_colors = false,
			compile = {
				enabled = false,
				path = vim.fn.stdpath("cache") .. "/catppuccin",
			},
			dim_inactive = {
				enabled = false,
				shade = "dark",
				percentage = 0.15,
			},
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			integrations = {
				-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
			},
			color_overrides = {},
			highlight_overrides = {},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
