return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "folke/trouble.nvim",
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("chatgpt").setup({
            openai_params = {
                model = "gpt-4",
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>cc", ":ChatGPT<CR>")
        vim.keymap.set({ "n", "v" }, "<leader>co", ":ChatGPTRun optimize_code<CR>")
        vim.keymap.set({ "n", "v" }, "<leader>cf", ":ChatGPTRun fix_bugs<CR>")
        vim.keymap.set({ "n", "v" }, "<leader>ce", ":ChatGPTRun explain_code<CR>")
    end,
}
