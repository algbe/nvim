return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			enable_normal_mode_for_inputs = true,
		})
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left git_status<CR>", {})
	end,
}
