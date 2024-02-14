return {
    -- Native LSP with nvim-cmp and luasnip --
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "neovim/nvim-lspconfig",
    -------------------------------------------
    -- LSP additional language client tools --
   'simrat39/rust-tools.nvim', -- Rust tools (lspconfig)
   --------------------------------------------
   -- General --
   {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}, -- Better code coloring
   'phaazon/hop.nvim',
}

