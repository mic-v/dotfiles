return {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
                require("gruvbox").setup({
                        terminal_colors = true,
                        contrast = "hard",
                        inverse = true,
                        vim.cmd("colorscheme gruvbox")
                })
        end,
}

