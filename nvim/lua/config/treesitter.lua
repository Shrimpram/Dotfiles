local ts_configs = require('nvim-treesitter.configs')
ts_configs.setup {
  ensure_installed = {
    'bash', 'bibtex', 'c', 'c_sharp', 'comment', 'cpp', 'css', 'go',
    'html', 'javascript', 'json', 'jsonc', 'latex', 'lua',
    'python', 'regex', 'rust', 'toml', 'yaml'
  },
  highlight = {enable = true, use_languagetree = true},
  indent = {enable = false},
}
