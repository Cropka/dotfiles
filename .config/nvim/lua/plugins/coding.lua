return {
    -- Native LSP with nvim-cmp and luasnip --
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'rafamadriz/friendly-snippets',
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" }
    },
    'saadparwaiz1/cmp_luasnip',
    'neovim/nvim-lspconfig',
    'numToStr/Comment.nvim',
    -------------------------------------------
    -- LSP additional language client tools --
    'simrat39/rust-tools.nvim', -- Rust tools (lspconfig)
    -------------------------------------------
    ----------------- General -----------------
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- Better code coloring
    { -- Mulitple cursors
         "brenton-leighton/multiple-cursors.nvim",
         version = "*",  -- Use the latest tagged version
         opts = {},  -- This causes the plugin setup function to be called
         keys = {
             {"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>"},
             {"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>"},
             {"<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}},
             {"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}},
             {"<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>", mode = {"n", "x"}},
         }
    },
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
}

