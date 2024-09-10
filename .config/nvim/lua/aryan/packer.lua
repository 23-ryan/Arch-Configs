local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('rose-pine/neovim')
Plug('preservim/nerdtree', {on = 'NERDTreeToggle'})
Plug('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('github/copilot.vim')
Plug('tpope/vim-obsession')
Plug('lervag/vimtex')
Plug('instant-markdown/vim-instant-markdown')
vim.call('plug#end')
