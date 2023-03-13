--------------- Project tree with nvim-tree --------------------
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },

  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})

vim.keymap.set('n', '<leader>ntf', '<cmd>NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<leader>nto', '<cmd>NvimTreeOpen<cr>', {})
vim.keymap.set('n', '<leader>ntc', '<cmd>NvimTreeClose<cr>', {})


----------- Devicons --------------------------
require'nvim-web-devicons'.setup{
  default = true,
}

