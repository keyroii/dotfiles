local vim = vim
local Plug = vim.fn['plug#']

vim.g.OmniSharp_highlighting = 0

vim.api.nvim_set_keymap("i", "<Tab>", [[pumvisible() and "\<C-n>" or getline('.')[col('.')-2]:match('[%w._%-$#]') and "\<C-x>\<C-o>" or "\<Tab>"]], { expr = true, noremap = true })

vim.call('plug#begin')

Plug 'catppuccin/nvim'

Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')

Plug('romgrk/barbar.nvim')

Plug('nvim-lualine/lualine.nvim')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'OmniSharp/omnisharp-vim'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'prabirshrestha/asyncomplete'

vim.call('plug#end')

home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require"common"
require"theme"
require"vimtree"
require"barbar"
require"lua_line"
require"treesitter"
--require"cmpconf"
