return {
        'nvim-treesitter/nvim-treesitter',
        event = { "BufReadPre", "BufNewFile"},
        build = ":TSUpdate",
        config = function ()
                local treesitter = require("nvim-treesitter.configs")
                treesitter.setup({
                        highlight = {
                                enable = true,
                                additional_vim_regex_highlighting = false,
                        },
                        autotag = {
                                enable = true,
                        },
                        ensure_installed = {
                                "html",
                                "css",
                                "vim",
                                "lua",
                                "c",
                                "javascript",
                                "typescript",
                                "python",
                        },
                })
                
        end,
}
