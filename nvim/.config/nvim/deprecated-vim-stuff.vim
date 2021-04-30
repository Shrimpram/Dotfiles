" {{{
" Compiling Markdown via pandoc
" See https://vi.stackexchange.com/questions/17549/using-pandoc-with-vim-keybindings
"augroup my_markdown
"	autocmd!
"	autocmd FileType markdown nnoremap <buffer><nowait> <leader>cm :<c-u> call jobstart('pandoc '.expand('%:p').' -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')<cr>
"augroup END
"
"
"command! Compile
"        \ autocmd BufWritePost *.md silent! call jobstart('pandoc '.expand('%:p').' -s -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('xelatex '.expand('%:p:r').')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('biber '.expand('%:p:r').')
" 
"nmap <nowait><silent> <F8> :Compile <CR>

" autocmd BufWritePost *.md silent! call jobstart('pandoc '.expand('%:p').' -s -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')
 
" autocmd BufWritePost *.tex silent! call jobstart('xelatex '.expand('%:p:r').')
" autocmd BufWritePost *.tex silent! call jobstart('biber '.expand('%:p:r').')
"}}}

"{{{
"augroup vim_prose
"    autocmd Filetype markdown noremap <F4> <buffer>  ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"    autocmd Filetype tex noremap <F4> <buffer> ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"augroup END
"}}}

"{{{
" WRITEMODE
" Writemode for writing prose
" Followed this reddit thread
" https://www.reddit.com/r/vim/comments/ckyspu/heres_how_to_create_custom_workspaces_to_switch/
":command Writemode set spell | Goyo 70 | set showmode | set guifont=JetBrains_Mono:h12
"
":command Codemode set nospell | Goyo! | set noshowmode | set guifont=JetBrains_Mono:h12
"}}}

"{{{UNUSED PLUGINS--------------------------------
" Plug 'hoob3rt/lualine.nvim'
" Plug 'mhinz/vim-startify'				" Vim start screen
" Plug 'SirVer/ultisnips'				" Engine for using snippets
" Plug 'unblevable/quick-scope'
" Plug 'terryma/vim-multiple-cursors'
"Plug 'kdav5758/TrueZen.nvim'
"Plug 'lukas-reineke/indent-blankline.nvim',
"            \{ 'branch' : 'lua' }
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim',
"            \{ 'on' : ['Telescope', 'Telescope git_files',
"            \'Telescope buffers', 'Telescope git_commits',
"            \'Telescope live_grep', 'Telescope current_buffer_fuzzy_find'] }
"Plug 'voldikss/vim-floaterm',
"            \{ 'on' : ['FloatermFirst', 'FloatermHide', 
"            \'FloatermKill', 'FloatermLast', 'FloatermNew',
"            \'FloatermNext', 'FloatermPrev', 'FloatermSend',
"            \'FloatermShow', 'FloatermToggle', 'FloatermUpdate'] }
" Plug 'AlessandroYorba/Despacio'
" Plug 'romainl/flattened'
" Plug 'junegunn/seoul256.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'Iron-E/nvim-soluarized'
" Plug 'tpope/vim-vividchalk'
"----------------------------------------------}}}
