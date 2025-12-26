return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
            -- Add nvim-cmp for automatic LSP completions
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" }, -- Optional: buffer words
            { "hrsh7th/cmp-path" },   -- Optional: file paths
        },
        config = function()
            vim.lsp.enable({"lua_ls", "tailwindcss", "ts_ls", "rust_analyzer" })
            
            -- nvim-cmp setup for automatic popup completions
            local cmp = require("cmp")
            cmp.setup({
                completion = {
                    autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(), -- Manual trigger fallback
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" }, -- LSP first
                }, {
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    }
}

