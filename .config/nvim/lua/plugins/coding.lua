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
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require'lsp_signature'.setup(opts) end
    },
    -------------------------------------------
    -- LSP additional language client tools --
    'simrat39/rust-tools.nvim', -- Rust tools (lspconfig)
    -------------------------------------------
    ----------------- General -----------------
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- Better code coloring
    {
        'windwp/nvim-autopairs', -- pair parenthesis on enter
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
}

