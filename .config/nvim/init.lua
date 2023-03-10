----------- vim plug ---------------------------
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- Plug('neoclide/coc.nvim', {branch = 'release'})
-- Native LSP with nvim-cmp and luasnip --
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
-------------------------------------------
Plug('simrat39/rust-tools.nvim') -- Rust tools (lspconfig)
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { branch = '0.1.x' })
Plug('phaazon/hop.nvim')
Plug('nvim-tree/nvim-web-devicons') -- optional, for file icons
Plug('nvim-tree/nvim-tree.lua') -- Project tree
Plug('nvim-tree/nvim-web-devicons') -- devicons for project tree and telescope
Plug('mfussenegger/nvim-dap') -- debugger
Plug('EdenEast/nightfox.nvim')  -- Color scheme
vim.call('plug#end')

----------- Use clipboard ---------------------
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

----------- Show line numbers -----------------
vim.opt.number = true

----------- LSP -------------------------------
local my_lsp = require'my_lsp_cfg'

----------- Completion engine -----------------
local my_cmp = require'my_cmp_cfg'

----------- nvim treesitter -------------------
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

----------- Telescope -------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

----------- Hop -------------------------------
require'hop'.setup()


----------- Project Tree ----------------------
local my_cmp = require'project_tree'

----------- Set Color Scheme ------------------
vim.cmd('colorscheme duskfox')



-- qt project re,ove later
vim.opt.makeprg = 'cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..'
