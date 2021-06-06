" Toggles NERDTree on & off
nnoremap <silent> <leader>nt :NvimTreeToggle<CR>
" Instantly jumps cursor to NTree window. Useful when you have many splits open
nnoremap <silent> <leader>nf :NvimTreeFindFile<CR>

let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
