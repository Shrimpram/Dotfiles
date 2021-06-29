local map = vim.api.nvim_set_keymap

map( 'n', '<leader>ff', [[<CMD>Telescope find_files theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fg', [[<CMD>Telescope git_files theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fl', [[<CMD>Telescope live_grep theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'v', '<leader>fl', [[<CMD>Telescope grep_string theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>ft', [[<CMD>Telescope file_browser theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fq', [[<CMD>Telescope quickfix theme=get_ivy<CR>]], {noremap = true, silent = true} )
map( 'n', '<leader>fb', [[<CMD>Telescope buffers show_all_buffers=true sort_lastused=true theme=get_ivy<CR>]], {noremap = true, silent = true} )

vim.cmd([[command! Colorscheme Telescope colorscheme theme=get_ivy]])
