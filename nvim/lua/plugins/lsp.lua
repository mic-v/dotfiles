return {
        "neovim/nvim-lspconfig",
        dependencies = {
                "williamboman/mason.nvim",
                "williamboman/mason-lspconfig.nvim",
                "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
                local mason = require("mason")
                local mason_lsp = require("mason-lspconfig")
                mason.setup()
                mason_lsp.setup({
                        -- list of servers for mason to install
                        ensure_installed = {
                                "html",
                                "cssls",
                                "pyright",
                                "clangd",
                                "tailwindcss",
                                "ts_ls",
                                "lua_ls",

                        },
                        -- auto installs configured servers(with lsp config)
                        automatic_installation = true,
                })
                local lspconfig = require("lspconfig")

                local cmp_nvim_lsp = require("cmp_nvim_lsp")
                --enable auto-cmp
                local capabilities = cmp_nvim_lsp.default_capabilities() 
                
                lspconfig["html"].setup({
                        capablities = capabilities,
                        on_attach = on_attach,
                })
                                
                lspconfig["cssls"].setup({
                        capablities = capabilities,
                        on_attach = on_attach,
                })
	
		lspconfig["pyright"].setup({
                        capablities = capabilities,
                        on_attach = on_attach,
                })
				
		lspconfig["clangd"].setup({
                        capablities = capabilities,
                        on_attach = on_attach,
                })
		
		lspconfig["tailwindcss"].setup({
                        capablities = capabilities,
                        on_attach = on_attach,
                })
		
		lspconfig["ts_ls"].setup({
                        capablities = capabilities,
                       on_attach = on_attach,
                })
                lspconfig["lua_ls"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
        end,

}
