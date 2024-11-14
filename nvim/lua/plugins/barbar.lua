return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        animation = true,
    },
    config = function ()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        -- Move to previous/next
        map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
        map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
        -- Close buffer
        map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    end,
}
