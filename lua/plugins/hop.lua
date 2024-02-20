return {
	"phaazon/hop.nvim",
	config = function()
		local hop = require("hop")
		hop.setup({
			keys = "etovxqpdygfblzhckisuran",
		})

		vim.api.nvim_set_keymap("n", "ma", ":HopAnywhere<cr>", { silent = true })
		vim.api.nvim_set_keymap("n", "ml", ":HopLine<cr>", { silent = true })
		vim.api.nvim_set_keymap("n", "mw", ":HopWord<cr>", { silent = true })
	end,
}
