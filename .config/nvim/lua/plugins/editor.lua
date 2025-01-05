return {
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    'phaazon/hop.nvim',
    'mbbill/undotree',
    'eandrju/cellular-automaton.nvim',
    { -- Mulitple cursors
         "brenton-leighton/multiple-cursors.nvim",
         version = "*",  -- Use the latest tagged version
         opts = {},  -- This causes the plugin setup function to be called
         keys = {
             {"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>"},
             {"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>"},
         }
    },

}
