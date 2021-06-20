-- Automatically compiles packer after writing to the plugins.lua file
vim.cmd [[autocmd BufWritePost plugins.lua PackerCompile]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      {'nvim-treesitter/nvim-treesitter-refactor'},
      {'nvim-treesitter/nvim-treesitter-textobjects'},
      {'nvim-treesitter/playground', opt = true}
    },
    config = [[require('config.treesitter')]],
    run = ':TSUpdate'
  }

  -- Git
  use {
    { 'rhysd/committia.vim' }, {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('config.gitsigns')]]
    }, {
      'TimUntersberger/neogit',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('neogit').setup{}]]
    },
    { 'kdheepak/lazygit.nvim' }
  }


  -- Fzf
  use {
    { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end },
    { 'junegunn/fzf.vim' }
  }

  -- Better movement
  use 'justinmk/vim-sneak'

  -- Commenting
  use 'tpope/vim-commentary'


  --- Parentheses text objects

  -- More text objects for matching parens
  use 'wellle/targets.vim'

  -- Add/del/replace parens
  use 'machakann/vim-sandwich'


  -- Text formatting

  --- Editorconfig (line endings, spaces, etc)
  use 'editorconfig/editorconfig-vim'

  --- Align
  use 'junegunn/vim-easy-align'


  -- Utilities

  --- Search
  use {
    'romainl/vim-cool',
    config = vim.cmd([[set hlsearch]])
  }

  --- Smooth scroll
  use 'karb94/neoscroll.nvim'

  --- File Tree (lua NERDTree)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    opt = true,
    cmd = 'NvimTreeToggle'
  }

  --- Undo History
  use {
    'mbbill/undotree',
    cmd = 'UndotreeToggle',
    config = [[vim.g.undotree_SetFocusWhenToggle = 1]]
  }

  --- Statusline
  use {
    'ojroques/nvim-hardline',
    config = [[require('hardline').setup { theme = 'stella' }]]
  }

  --- Show registers
  use 'tversteeg/registers.nvim'

  --- Async building
  use {
    'tpope/vim-dispatch',
    cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
  }

  --- Snippets
  use {
    { 'hrsh7th/vim-vsnip' },
    { 'hrsh7th/vim-vsnip-integ' }
  }

  --- Better spellcheck & thesaurus (use with dwyl dictionary and moby thesaurus)
  use 'preservim/vim-lexical'

  --- Startuptime Profiler
  use {
    'tweekmonster/startuptime.vim',
    cmd = 'StartupTime'
  }


  -- Aesthetics

  --- Display colors
  use {
    'rrethy/vim-hexokinase',
    run = 'make hexokinase'
  }

  --- Focus window
  use {
    'folke/zen-mode.nvim',
    config = [[require("zen-mode").setup{}]],
    cmd = 'ZenMode'
  }


  -- Latex
  use { 'lervag/vimtex', ft = 'tex' }


  -- Colorschemes

  use {
    { '$HOME/Documents/stella/vim-stella' },
    { 'romainl/Apprentice' },
    { 'ayu-theme/ayu-vim' },
    { 'sjl/badwolf' },
    { 'chriskempson/base16-vim' },
    { 'archseer/colibri.vim' },
    { 'reedes/vim-colors-pencil' },
    { 'nightsense/cosmic_latte' },
    { 'romainl/vim-dichromatic' },
    { 'wadackel/vim-dogrun' },
    { 'romgrk/doom-one.vim' },
    { 'dracula/vim', as = 'dracula' },
    { 'sainnhe/everforest' },
    { 'fcpg/vim-fahrenheit' },
    { 'jaredgorski/fogbell.vim' },
    { 'sainnhe/gruvbox-material' },
    { 'lifepillar/vim-gruvbox8' },
    { 'savq/melange' },
    { 'KeitaNakamura/neodark.vim' },
    { 'arcticicestudio/nord-vim' },
    { 'mhartington/oceanic-next' },
    { 'joshdick/onedark.vim' },
    { 'fcpg/vim-orbital' },
    { 'drewtempelmeyer/palenight.vim' },
    { 'tyrannicaltoucan/vim-quantum' },
    { 'lifepillar/vim-solarized8' },
    { 'srcery-colors/srcery-vim' },
    { 'nightsense/stellarized' }
  }

-- use { 'christoomey/vim-tmux-navigator' }
-- use { 'RyanMillerC/better-vim-tmux-resizer' }

end)
