local map = vim.api.nvim_set_keymap
local let = vim.api.nvim_set_var

let( 'neomake_verbose', 1 )
let( 'neomake_open_list', 2 )

map( 'n', ']c', [[<CMD>cnext<CR>]], {noremap = true, silent = true} )
map( 'n', '[c', [[<CMD>cprev<CR>]], {noremap = true, silent = true} )

map( 'n', ']l', [[<CMD>lnext<CR>]], {noremap = true, silent = true} )
map( 'n', '[l', [[<CMD>lprev<CR>]], {noremap = true, silent = true} )

vim.cmd([[
augroup neomake
    autocmd!
    autocmd VimEnter call neomake#configure#automake('nwi')
augroup END
]])
