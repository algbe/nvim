return {
    "topazape/md-preview.nvim",
    ft = { "md", "markdown", "mkd", "mkdn", "mdwn", "mdown", "mdtxt", "mdtext", "rmd", "wiki" },
    config = function()
        require("md-preview").setup({
            viewer = {
                -- mdcat
                exec = "mdcat",
                exec_path = "",
                args = { "--local" },

                -- glow
                -- exec = "glow",
                -- exec_path = "",
                -- args = { "-s", "dark" },

                -- terminal markdown viewer
                -- exec = "mdv",
                -- exec_path = "",
                -- args = { "-c", 80 },
            },
            -- Markdown preview term
            term = {
                -- reload term when rendered markdown file changed
                reload = {
                    enable = true,
                    events = { "InsertLeave", "TextChanged" },
                },
                direction = "vertical", -- choices: vertical / horizontal
                keys = {
                    close = { "q" },
                    refresh = "r",
                },
            },
        })
    end,
}
