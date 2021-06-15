-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Automatically compiles packer after writing to the plugins.lua file
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

-- Packer bootstrapping function

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

use 'wbthomason/packer.nvim'

--- Treesitter
use {
  'nvim-treesitter/nvim-treesitter',
  requires = {
    'nvim-treesitter/nvim-treesitter-refactor', 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/playground'
  },
  config = [[require('config.treesitter')]],
  run = ':TSUpdate'
}

--- Git
use {
    { 'rhysd/committia.vim' },
    {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = [[require('config.gitsigns')]],
    }
}


--- Junegunn
use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
use {
    'junegunn/fzf.vim',
    requires = { 'tpope/vim-fugitive', opt = true }
}
use { 'junegunn/goyo.vim', cmd = 'Goyo' }
use { 'junegunn/limelight.vim', cmd = 'Limelight' }

--- Text
use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }

use { 'ggandor/lightspeed.nvim',
    config = require'lightspeed'.setup {
        jump_to_first_match = true,
        cycle_group_fwd_key = ';',
        cycle_group_bwd_key = ',',
        full_inclusive_prefix_key = '<tab>',
    }
}
use { 'b3nj5m1n/kommentary' }
use { 'tommcdo/vim-lion' }
use { 'wellle/targets.vim' }
use { 'machakann/vim-sandwich' }
use { 'dhruvasagar/vim-table-mode' }

--- Utilities
use {
    'romainl/vim-cool',
    config = vim.cmd([[set hlsearch]])
}

use { 'karb94/neoscroll.nvim' }

use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' }
}

use { 'tversteeg/registers.nvim' }

use {
    'shrimpram/nvim-hardline',
    config = [[require('hardline').setup { theme = 'stella' } ]]
}

use { 'christoomey/vim-tmux-navigator' }
use { 'RyanMillerC/better-vim-tmux-resizer' }
use { 'mbbill/undotree', cmd = 'UndotreeToggle' }
use { 'hrsh7th/vim-vsnip' }
use { 'hrsh7th/vim-vsnip-integ' }

use {
    'folke/zen-mode.nvim',
    config = [[require("zen-mode").setup{}]]
}

--- Misc
use { 'dstein64/vim-startuptime' }

--- Filetype
use { 'lervag/vimtex', ft = 'tex' }
use { 'preservim/vim-lexical' }
--- Colorschemes
use { '~/Documents/stella/vim-stella' }
use { 'romainl/Apprentice' }
use { 'ayu-theme/ayu-vim' }
use { 'sjl/badwolf' }
use { 'chriskempson/base16-vim' }
use { 'archseer/colibri.vim' }
use { 'reedes/vim-colors-pencil' }
use { 'nightsense/cosmic_latte' }
use { 'romainl/vim-dichromatic' }
use { 'wadackel/vim-dogrun' }
use { 'romgrk/doom-one.vim' }
use { 'dracula/vim', as = 'dracula' }
use { 'sainnhe/everforest' }
use { 'fcpg/vim-fahrenheit' }
use { 'jaredgorski/fogbell.vim' }
use { 'sainnhe/gruvbox-material' }
use { 'lifepillar/vim-gruvbox8' }
use { 'savq/melange' }
use { 'KeitaNakamura/neodark.vim' }
use { 'arcticicestudio/nord-vim' }
use { 'mhartington/oceanic-next' }
use { 'joshdick/onedark.vim' }
use { 'fcpg/vim-orbital' }
use { 'drewtempelmeyer/palenight.vim' }
use { 'tyrannicaltoucan/vim-quantum' }
use { 'lifepillar/vim-solarized8' }
use { 'srcery-colors/srcery-vim' }
use { 'nightsense/stellarized' }

end)
