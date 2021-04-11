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
set foldmethod=marker foldlevel=1
set hidden
set ignorecase smartcase
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
set showmatch 
set tabstop=4 softtabstop=4
set termguicolors
set timeoutlen=250
set undodir=~/.config/nvim/undodir
set updatetime=100
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
Plug 'junegunn/goyo.vim',
            \{ 'on' : 'Goyo' }
Plug 'junegunn/limelight.vim',
            \{ 'on' : 'Limelight' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'dstein64/vim-startuptime'

" Utilities
" Plug 'edkolev/tmuxline.vim'
Plug 'mbbill/undotree',
            \{ 'on' : 'UndotreeToggle' }

Plug 'voldikss/vim-floaterm',
            \{ 'on' : ['FloatermFirst', 'FloatermHide', 
            \'FloatermKill', 'FloatermLast', 'FloatermNew',
            \'FloatermNext', 'FloatermPrev', 'FloatermSend',
            \'FloatermShow', 'FloatermToggle', 'FloatermUpdate'] }
Plug 'junegunn/vim-peekaboo',
            \{ 'on' : '<Plug>(peekaboo)' }

" Files
Plug 'junegunn/fzf',
			\{ 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'	
Plug 'kyazdani42/nvim-tree.lua',

" Git
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim',
            \{ 'on' : 'GV' }

" Text
Plug 'tpope/vim-commentary'
"Plug 'terryma/vim-multiple-cursors'
Plug 'karb94/neoscroll.nvim'
Plug 'tpope/vim-speeddating'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'wellle/targets.vim'
Plug 'brennier/quicktex'
Plug 'lervag/vimtex',
			\{ 'for': 'tex' }
Plug 'mg979/vim-visual-multi'

"{{{COLORSCHEMES----------------------------------
Plug 'romainl/Apprentice'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/everforest'
Plug 'fcpg/vim-fahrenheit'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
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


" Plug 'AlessandroYorba/Despacio'
" Plug 'romainl/flattened'
" Plug 'junegunn/seoul256.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'Iron-E/nvim-soluarized'
" Plug 'tpope/vim-vividchalk'
"----------------------------------------------}}}
"----------------------------------------------}}}

"{{{PLUGIN CONFIGS--------------------------------
source ~/.config/nvim/plugin-config/airline.vim

source ~/.config/nvim/plugin-config/easymotion.vim

source ~/.config/nvim/plugin-config/fff.vim

source ~/.config/nvim/plugin-config/fzf.vim

source ~/.config/nvim/plugin-config/latex-live-preview.vim

source ~/.config/nvim/plugin-config/nerdtree.vim

source ~/.config/nvim/plugin-config/peekaboo.vim

source ~/.config/nvim/plugin-config/tmuxline.vim

source ~/.config/nvim/plugin-config/ultisnips.vim

source ~/.config/nvim/plugin-config/undotree.vim

source ~/.config/nvim/plugin-config/vimagit.vim

source ~/.config/nvim/plugin-config/vimtex.vim

source ~/.config/nvim/plugin-config/quicktex.vim
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
nnoremap <nowait><silent> <leader>ww :w<CR>

" Better indenting
" See https://github.com/ChristianChiarulli/nvim/blob/56f65b12a446fe05483a23585dd4e3104205b062/keys/mappings.vim#L13-L14
vnoremap < <gv
vnoremap > >gv

" Jump to the next appearance of my special sequence, delete it, then put me in insert mode.
nnoremap <nowait><silent> <leader><tab> /\[<.\+>\]<CR>t]"jyi>da]:let jump = "j"<CR>:echo jump<CR>i

" Opens the "latest url file in my dropbox
command! LURL vsplit '/mnt/c/Users/Shreeram Modi/dropbox/personal/Latest_Url.txt'

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
nnoremap <nowait><silent> <C-Up> :resize +2<CR>
nnoremap <nowait><silent> <C-Down> :resize -2<CR>
nnoremap <nowait><silent> <C-Left> :vertical resize -2<CR>
nnoremap <nowait><silent> <C-Right> :vertical resize +2<CR>

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
augroup my_markdown
	autocmd!
	autocmd FileType markdown nnoremap <buffer><nowait><silent> <leader>cm :<c-u>silent call system('pandoc '.expand('%:p').' -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')<cr>
augroup END


" command! Compile
" 		\ autocmd BufWritePost *.md silent! call jobstart('pandoc '.expand('%:p').' -s -o '.expand('%:p:r').'.pdf --pdf-engine=xelatex')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('xelatex '.expand('%:p:r').')
" 		\ autocmd BufWritePost *.tex silent! call jobstart('biber '.expand('%:p:r').')
" 
" nmap <nowait><silent> <F8> :Compile <CR>

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

" WRITEMODE
" Writemode for writing prose
" Followed this reddit thread
" https://www.reddit.com/r/vim/comments/ckyspu/heres_how_to_create_custom_workspaces_to_switch/
":command Writemode set spell | Goyo 70 | set showmode | set guifont=JetBrains_Mono:h12
"
":command Codemode set nospell | Goyo! | set noshowmode | set guifont=JetBrains_Mono:h12
"----------------------------------------------}}}
