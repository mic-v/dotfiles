return {
    "windwp/nvim-ts-autotag",
    config = function()
        require('nvim-ts-autotag').setup({
            opts = {
                --auto close pairs
                enable_close = true,
                --auto rename pairs
                enable_rename = true,
                --auto close on trailing </
                enable_close_on_slash = false,
            },
            per_filetype = {
            }
        })
    end,
}
