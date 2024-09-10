local set = vim.opt

vim.cmd('filetype plugin on')

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
-- set.expandtab = true

set.termguicolors = true

set.number = true
set.relativenumber = true
vim.cmd('syntax on')


set.smartindent = true
set.wrap = true
set.hlsearch = false
set.incsearch = true

set.scrolloff = 5
-- set.signcolumn = "yes"

set.updatetime = 50
-- set.colorcolumn = "80"

set.undofile = true
set.cursorline = true


vim.g.mapleader = ','
vim.mapleader = ','

-- function for key mappings
local function map(kind, lhs, rhs, opts)
  vim.api.nvim_set_keymap(kind, lhs, rhs, opts)
end

local silentnoremap = {noremap = true, silent = true}

map('i', '<ESC>viwUviw<ESC>a', '<C-u>', silentnoremap)
map('n', 'viwU','<C-u>', silentnoremap)

map('i','jj', '<C-n>', silentnoremap)
map('i', 'kk','<C-p>', silentnoremap)
map('i', '<S-Tab>','<C-d>', silentnoremap)
map('n', '<leader>tn', ':tabn<cr>', silentnoremap)
map('n', '<leader>tp', ':tabp<cr>', silentnoremap)

--set.whichwrap+=<,>,[,]
--set.unfoldemethod = syntax

--map('i', '<C-S-t>', ':tabnew<CR>', silentnoremap)


-- setting vim copy buffer to system clipboard
vim.opt.clipboard = "unnamedplus"

-- numbering tabs
-- Rename tabs to show tab number
vim.cmd('source ~/.config/nvim/lua/aryan/tabenum.vim')

-- adding template for cpp
vim.api.nvim_command('autocmd BufNewFile cp_*.cpp 0r ~/.nvim/skeleton.cpp')

