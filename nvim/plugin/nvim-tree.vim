nnoremap <silent> <leader>nt :NvimTreeToggle<CR>
nnoremap <silent> <leader>nr :NvimTreeRefresh<CR>
nnoremap <silent> <leader>nf :NvimTreeFindFile<CR>

let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default

let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE', 'LICENSE' ] " List of filenames that gets highlighted with NvimTreeSpecialFile

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }
