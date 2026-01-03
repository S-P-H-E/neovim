return {
    {
        "datsfilipe/vesper.nvim",
        priority = 1000,  -- Load before other plugins
        config = function()
            require("vesper").setup({
                transparent = true,
                italics = {
                    comments = true,
                    keywords = true,
                    functions = true,
                    strings = true,
                    variables = true,
                },
                overrides = {},
                palette_overrides = {},
            })
            vim.cmd.colorscheme("vesper")
        end,
    }
}

