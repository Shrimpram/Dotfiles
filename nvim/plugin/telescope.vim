nnoremap <silent> <leader>ff <CMD>Telescope find_files                                       theme=get_ivy<CR>
nnoremap <silent> <leader>fg <CMD>Telescope git_files                                        theme=get_ivy<CR>
nnoremap <silent> <leader>fl <CMD>Telescope live_grep                                        theme=get_ivy<CR>
vnoremap <silent> <leader>fl <CMD>Telescope grep_string                                      theme=get_ivy<CR>
nnoremap <silent> <leader>ft <CMD>Telescope file_browser                                     theme=get_ivy<CR>
nnoremap <silent> <leader>fq <CMD>Telescope quickfix                                         theme=get_ivy<CR>
nnoremap <silent> <leader>fb <CMD>Telescope buffers show_all_buffers=true sort_lastused=true theme=get_ivy<CR>

command! Colorscheme Telescope colorscheme theme=get_ivy
