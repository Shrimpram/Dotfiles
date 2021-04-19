" NOTE: You can use other key to expand snippet.


" Expand or jump
imap <expr> <C-Right>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-Right>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump backward
imap <expr> <C-Left> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <C-Left> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap <leader>d <Plug>(vsnip-select-text)
xmap <leader>d <Plug>(vsnip-select-text)
nmap <leader>c <Plug>(vsnip-cut-text)
xmap <leader>c <Plug>(vsnip-cut-text)

let g:vsnip_snippet_dir = expand('~/dotfiles/nvim/.config/nvim/Snips')
