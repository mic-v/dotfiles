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
                                "cmake",
                                "rust_analyzer",
                        },
                        -- auto installs configured servers(with lsp config)
                        automatic_installation = true,
                })
                local lspconfig = require("lspconfig")

                local cmp_nvim_lsp = require("cmp_nvim_lsp")
                --enable auto-cmp
                local capabilities = cmp_nvim_lsp.default_capabilities()
                lspconfig["html"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
                                
                lspconfig["cssls"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
	
		lspconfig["pyright"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
				
		lspconfig["clangd"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
		
		lspconfig["tailwindcss"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
		
		lspconfig["ts_ls"].setup({
                        capabilities = capabilities,
                       on_attach = on_attach,
                })
                lspconfig["lua_ls"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })

                lspconfig["cmake"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })

                lspconfig["rust_analyzer"].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                })
        end,

}
