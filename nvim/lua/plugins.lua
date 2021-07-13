local map = vim.api.nvim_set_keymap
-- Automatically compiles packer after writing to the plugins.lua file
vim.cmd [[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      {'nvim-treesitter/playground', opt = true}
    },
    config = [[require('config.treesitter')]],
    run = ':TSUpdate'
  }

  -- Git
  use {
    { 'rhysd/committia.vim' },
    {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('config.gitsigns')]]
    },
    {
      'TimUntersberger/neogit',
      requires = { 'nvim-lua/plenary.nvim', opt = true },
      config = [[require('neogit').setup{}]],
      setup = map( 'n', '<leader>g', [[<CMD>Neogit<CR>]], {noremap = true, silent = true} ),
      cmd = 'Neogit'
    },
    {
      'kdheepak/lazygit.nvim',
      cmd = { 'LazyGit', 'LazyGitConfig', 'LazyGitFilter' }
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    event = 'VimEnter',
    config = [[require('config.telescope')]]
  }

  -- Org Mode
  use {
    'kristijanhusak/orgmode.nvim',
    config = [[require('orgmode').setup{
      org_agenda_files = '~/Sync/org/*',
      org_default_notes_file = '~/Sync/org/inbox.org',
    }]]
  }


  -- Better movement
  use {
    'justinmk/vim-sneak',
    config = [[require('config.sneak')]],
    keys = { 's', 'S' }
  }

  -- Commenting
  use 'tpope/vim-commentary'


  -- Parentheses text objects

  --- More text objects for matching parens
  use 'wellle/targets.vim'

  --- Add/del/replace parens
  use {
    'machakann/vim-sandwich',
    keys = { 'sa', 'sd', 'sr' }
  }


  -- Text formatting

  --- Editorconfig (line endings, spaces, etc)
  use 'editorconfig/editorconfig-vim'

  --- Align
  use {
    {
      'junegunn/vim-easy-align',
      config = [[require('config.easy-align')]],
      keys = { 'gl' }
    },
    {
      'dhruvasagar/vim-table-mode',
      keys = { '<leader>tm', '<leader>tt' }
    }
  }


  -- Utilities

  --- Search
  use {
    'romainl/vim-cool',
    config = vim.cmd([[set hlsearch]])
  }

  --- Smooth scroll
  vim.opt_local.scrolloff = 0
  use {
    'karb94/neoscroll.nvim',
    config = [[require('neoscroll').setup{}]],
  }

  --- File Tree (lua NERDTree)
  use {
    'kyazdani42/nvim-tree.lua',
    config = [[require('config.nvim-tree')]],
    requires = { 'kyazdani42/nvim-web-devicons' },
    keys = { '<leader>nt', '<leader>nf',  },

  }

  --- Undo History
  use {
    'mbbill/undotree',
    config = [[require('config.undotree')]],
    keys = '<leader>ut',
    cmd = 'UndotreeToggle'
  }

  --- Diff swap files
  use 'chrisbra/Recover.vim'

  --- Statusline
  use {
    'ojroques/nvim-hardline',
    config = [[require('hardline').setup { theme = 'stella' }]]
  }

  --- Async building
  use {
    'neomake/neomake',
    setup = [[require('config.neomake')]],
    config = [[vim.cmd("call neomake#configure#automake('w')")]],
    event = 'VimEnter'
  }

  --- Snippets
  use {
    'hrsh7th/vim-vsnip',
    opt = true,
    ft = 'tex',
    config = [[require('config.vsnip')]],
    requires = { 'hrsh7th/vim-vsnip-integ', opt = true }
  }

  --- Better spellcheck & thesaurus (use with dwyl dictionary and moby thesaurus)
  use 'preservim/vim-lexical'

  --- Startuptime Profiler
  use {
    'tweekmonster/startuptime.vim',
    cmd = 'StartupTime'
  }

  --- Discord Rich Presence
  use {
    'andweeb/presence.nvim',
    event = 'VimEnter'
  }


  -- Aesthetics

  --- Display colors
  use {
    'rrethy/vim-hexokinase',
    run = 'make hexokinase',
    cmd = { 'HexokinaseToggle', 'HexokinaseTurnOn', 'HexokinaseTurnOff' }
  }

  --- Focus window
  use {
    'junegunn/goyo.vim',
    cmd = { 'Goyo' }
  }


  -- Latex
  use { 'lervag/vimtex', ft = 'tex' }


  -- Colorschemes

  use {
    '$HOME/Documents/stella/vim-stella',
    -- 'romainl/Apprentice',
    -- 'ayu-theme/ayu-vim',
    -- 'sjl/badwolf',
    -- 'chriskempson/base16-vim',
    -- 'reedes/vim-colors-pencil',
    -- 'nightsense/cosmic_latte',
    -- 'romainl/vim-dichromatic',
    -- 'wadackel/vim-dogrun',
    'romgrk/doom-one.vim',
    -- 'sainnhe/everforest',
    'fcpg/vim-fahrenheit',
    'jaredgorski/fogbell.vim',
    -- 'sainnhe/gruvbox-material',
    -- 'lifepillar/vim-gruvbox8',
    -- 'savq/melange',
    -- 'arcticicestudio/nord-vim',
    -- 'mhartington/oceanic-next',
    -- 'joshdick/onedark.vim',
    -- 'fcpg/vim-orbital',
    -- 'drewtempelmeyer/palenight.vim',
    -- 'tyrannicaltoucan/vim-quantum',
    'lifepillar/vim-solarized8',
    -- 'srcery-colors/srcery-vim',
    -- 'nightsense/stellarized'

    cmd = { 'Colorscheme', 'colorscheme' },
  }

-- use { 'christoomey/vim-tmux-navigator' }
-- use { 'RyanMillerC/better-vim-tmux-resizer' }

end)
