------------ Lazy ----------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy_opts = {}
require("lazy").setup("plugins", lazy_opts)

----------- Use clipboard ---------------------
vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

----------- Show line numbers -----------------
vim.opt.number = true

----------- Tab / Spaces ----------------------
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

----------- Completion engine and snippets -----------------
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
require'Comment'.setup()

----------- Hop -------------------------------
require'hop'.setup()
vim.keymap.set('n', '<leader>hh', '<cmd>HopWord<cr>', {})

----------- Multiline cursor ------------------
require'multiple-cursors'.setup()

----------- Surround --------------------------
require("nvim-surround").setup()

----------- Project Tree ----------------------
local my_pm = require'project_managing'

----------- Set Color Scheme ------------------
vim.cmd('colorscheme duskfox')

-- make command per filetype ------------------
vim.api.nvim_create_autocmd("FileType", { pattern = 'cpp', 
    callback = function ()
	vim.opt.makeprg = 'cd build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..'
    end
})

vim.api.nvim_create_autocmd("FileType", { pattern = 'rust', 
    callback = function ()
	vim.opt.makeprg = 'cargo build'
    end
})

------------------ Terminal -------------------
vim.g.term_buf = 0
vim.g.term_win = 0
function TermToggle()
    if vim.g.term_win == 0 then
	vim.cmd('botright sp')
	vim.g.term_win = vim.api.nvim_get_current_win()
    	if vim.g.term_buf == 0 or not vim.api.nvim_buf_is_valid(vim.g.term_buf) then
	    vim.cmd('terminal')
	    vim.g.term_buf = vim.api.nvim_win_get_buf(vim.g.term_win)
	else 
	    vim.api.nvim_win_set_buf(vim.g.term_win, vim.g.term_buf)
	end
    else
	if vim.api.nvim_win_is_valid(vim.g.term_win) then
	    vim.api.nvim_win_hide(vim.g.term_win)
	    vim.g.term_win = 0
	else
	    vim.g.term_win = 0
	    TermToggle()
	end
    end
end

vim.keymap.set('n', '<leader>tt', TermToggle, {})

