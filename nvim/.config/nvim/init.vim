"{{{GENERAL SETTINGS------------------------------
syntax on

filetype plugin on
filetype indent on

set autoindent
set backspace=eol,start,indent
set cmdheight=1
set conceallevel=0
set encoding=UTF-8
set expandtab
set foldmethod=marker foldlevel=0
set hidden
set ignorecase smartcase
set inccommand=nosplit
set incsearch
set iskeyword+=-
set nobackup
set noerrorbells
set nohlsearch
set noshowmode
set noswapfile
set number relativenumber
set ruler
set scrolloff=3
set shiftwidth=4
set tabstop=4 softtabstop=4
set termguicolors
set timeoutlen=250
set undodir=~/.config/nvim/undodir
set undofile
set wrap

let mapleader = " "		" Maps leader key (to space)
let maplocalleader = " "	" Maps local leader key (to space)

"{{{CLIPBOARD-------------------------------------
set clipboard+=unnamedplus

let g:clipboard = {
		\	'name': 'win32yank-wsl',
		\	'copy': {
		\	'+': 'win32yank.exe -i --crlf',
		\	'*': 'win32yank.exe -i --crlf',
		\	},
		\	'paste': {
		\	'+': 'win32yank.exe -o --lf',
		\	'*': 'win32yank.exe -o --lf',
		\	},
		\	'cache_enabled': 0,
		\	}
"----------------------------------------------}}}
"----------------------------------------------}}}

"{{{PLUGINS---------------------------------------
call plug#begin('~/.config/nvim/.plugged')

" QOL
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim',
            \{ 'on' : 'Goyo' }
Plug 'junegunn/limelight.vim',
            \{ 'on' : 'Limelight' }
Plug 'itchyny/lightline.vim'
Plug 'karb94/neoscroll.nvim'
Plug 'preservim/vim-pencil',
            \{ 'for': ['tex', 'markdown'] }
Plug 'dstein64/vim-startuptime'
Plug 'itchyny/lightline.vim'

" Utilities
"Plug 'edkolev/tmuxline.vim'
Plug 'lifepillar/vim-colortemplate',
            \{ 'on' : 'Colortemplate!' }
Plug 'voldikss/vim-floaterm',
            \{ 'on' : ['FloatermFirst', 'FloatermHide', 
            \'FloatermKill', 'FloatermLast', 'FloatermNew',
            \'FloatermNext', 'FloatermPrev', 'FloatermSend',
            \'FloatermShow', 'FloatermToggle', 'FloatermUpdate'] }
Plug 'junegunn/vim-peekaboo',
Plug 'mbbill/undotree',
            \{ 'on' : 'UndotreeToggle' }
Plug 'mg979/vim-visual-multi'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Files
Plug 'lambdalisue/fern.vim'

Plug 'junegunn/fzf', 
            \{ 'do': { -> fzf#install() } },
Plug 'junegunn/fzf.vim'

" Git
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Navigation
Plug 'justinmk/vim-sneak'

" Text
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
"Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'wellle/targets.vim'
Plug 'lervag/vimtex',
			\{ 'for': 'tex' }

"{{{COLORSCHEMES----------------------------------
Plug 'romainl/Apprentice'
Plug 'ayu-theme/ayu-vim'
Plug 'romainl/vim-dichromatic'
Plug 'sainnhe/everforest'
Plug 'fcpg/vim-fahrenheit'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'fcpg/vim-orbital'
Plug 'reedes/vim-colors-pencil'
"Plug 'ishan9299/nvim-solarized-lua'
Plug 'lifepillar/vim-solarized8'
Plug 'srcery-colors/srcery-vim'
"----------------------------------------------}}}

call plug#end()
"{{{UNUSED PLUGINS--------------------------------
" Plug 'itchyny/lightline.vim'
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

" Plug 'AlessandroYorba/Despacio'
" Plug 'romainl/flattened'
" Plug 'junegunn/seoul256.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'Iron-E/nvim-soluarized'
" Plug 'tpope/vim-vividchalk'
"----------------------------------------------}}}
"----------------------------------------------}}}

"{{{PLUGIN CONFIGS--------------------------------
source ~/.config/nvim/plugin-config/fern.vim

source ~/.config/nvim/plugin-config/fff.vim

source ~/.config/nvim/plugin-config/fugitive.vim

source ~/.config/nvim/plugin-config/fzf.vim

"source ~/.config/nvim/plugin-config/gitgutter.vim

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

source ~/.config/nvim/plugin-config/lightline.vim

lua require('neoscroll').setup()

source ~/.config/nvim/plugin-config/nvimtree.vim

source ~/.config/nvim/plugin-config/peekaboo.vim

source ~/.config/nvim/plugin-config/quicktex.vim

"source ~/.config/nvim/plugin-config/telescope.vim

"source ~/.config/nvim/plugin-config/tmuxline.vim

source ~/.config/nvim/plugin-config/undotree.vim

source ~/.config/nvim/plugin-config/vimtex.vim

source ~/.config/nvim/plugin-config/vsnip.vim
"----------------------------------------------}}}

"{{{COLORSCHEME CONFIG----------------------------
" Ayu
" let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme


" Despacio
let g:despacio_Sunset = 1	" dark gray background
" let g:despacio_Twilight = 1	" darker gray background
" let g:despacio_Midnight = 1	" almost black background
" let g:despacio_Pitch = 1	" black background


" Gruvbox
let g:gruvbox_contrast_dark = 'medium'	" medium contrast
let g:gruvbox_italicize_comments = '1'	" comments are not italicized
let g:gruvbox_italic = '1'	" enables italic text


" Gruvbox Material
let g:gruvbox_material_palette='material'	" colors settings -- 'material' is the new version, 'original' is default gruvbox, 'mix' is in between
let g:gruvbox_material_background='medium'	" soft contrast. other options are 'hard' and 'medium'
let g:gruvbox_material_enable_bold = 1		" '1' enables bold text
let g:gruvbox_material_enable_italic = 1	" '1' enables italic text

set background=dark
colorscheme solarized8
"----------------------------------------------}}}

"{{{REMAPS----------------------------------------
"{{{UTILITY---------------------------------------

" Basic leader commands to write and write+quit
nnoremap <nowait><silent> <leader>w :w<CR>
nnoremap <nowait><silent> <leader>wq :wq<CR>

" Better indenting
" See https://github.com/ChristianChiarulli/nvim/blob/56f65b12a446fe05483a23585dd4e3104205b062/keys/mappings.vim#L13-L14
vnoremap < <gv
vnoremap > >gv

" Jump to the next appearance of my special sequence, delete it, then put me in insert mode.
nnoremap <nowait><silent> <leader><tab> /\[<.\+>\]<CR>t]"jyi>da]:let jump = "j"<CR>:echo jump<CR>i

" Opens the "latest url file in my dropbox
command! LURL vsplit /mnt/c/Users/Shreeram\ Modi/dropbox/personal/Latest_Url.txt

" Easy way to escape insert mode in terminal buffer without using the abomination of a default mapping
tnoremap <esc> <C-\><C-N>
"----------------------------------------------}}}

"{{{NAVIGATION------------------------------------
" Make j and k move using visual lines instead of hard lines
nnoremap <expr><silent> j v:count ? 'j' : 'gj'
nnoremap <expr><silent> k v:count ? 'k' : 'gk'
vnoremap <expr><silent> j v:count ? 'j' : 'gj'
vnoremap <expr><silent> k v:count ? 'k' : 'gk'

" Use arrow keys to resize splits
nnoremap <nowait><silent> <M-k> :resize +2<CR>
nnoremap <nowait><silent> <M-j> :resize -2<CR>
nnoremap <nowait><silent> <M-h> :vertical resize -2<CR>
nnoremap <nowait><silent> <M-l> :vertical resize +2<CR>

" Shortcutting split navigation, saving a keypress:
noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l
"----------------------------------------------}}}

"{{{LATEX/MARKDOWN---------------------------------
" Compiling Latex via xelatex
nnoremap <nowait><silent> <leader>cl :<c-u>silent !xelatex '%:p:r'<CR>
" Compile bibliography using biber
nnoremap <nowait><silent> <leader>cb :<c-u>silent !biber '%:p:r'<CR>

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


" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex silent !latexmk -c
"----------------------------------------------}}}

"{{{F-KEYS----------------------------------------
" Triggers omnifunc
inoremap <silent> <F8> <C-x><C-o>

" Changes whether search results are highlighted or not
noremap <nowait><silent> <F11> :set hlsearch!<CR>

" Sets up vim to write prose
"
noremap <nowait><silent> <F3> :<C-u>set textwidth=72 colorcolumn=73 spell<CR>:<C-u>HardPencil<CR>
"
"augroup vim_prose
"    autocmd Filetype markdown noremap <F4> <buffer>  ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"    autocmd Filetype tex noremap <F4> <buffer> ':set textwidth=72 colorcolumn=73 HardPencil spell<CR>'
"augroup END
"-----------------------------------------------}}}

"{{{AESTHETICS------------------------------------
" Quick way to switch between light and dark mode
command! Light set background=light
command! Dark set background=dark
"----------------------------------------------}}}

"{{{TEMPLATES-------------------------------------
" Template for MLA formatted writing in LaTeX. See the file for the actual template
command! MLAtex read ~/.config/nvim/templates/MLAtex.tex

" Template for MLA formatted markdown document that compiles with pandoc. See the file for the actual template
command! MLAmd read ~/.config/nvim/templates/MLAmd.md
"----------------------------------------------}}}

"map f <Plug>Sneak_s
"map F <Plug>Sneak_S

" WRITEMODE
" Writemode for writing prose
" Followed this reddit thread
" https://www.reddit.com/r/vim/comments/ckyspu/heres_how_to_create_custom_workspaces_to_switch/
":command Writemode set spell | Goyo 70 | set showmode | set guifont=JetBrains_Mono:h12
"
":command Codemode set nospell | Goyo! | set noshowmode | set guifont=JetBrains_Mono:h12
"----------------------------------------------}}}
