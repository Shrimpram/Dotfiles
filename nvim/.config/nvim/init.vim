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
set nomodeline
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

" Git
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Junegunn
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim',   { 'on' : 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on' : 'Limelight' }

" Text
Plug 'b3nj5m1n/kommentary'
Plug 'wellle/targets.vim'
Plug 'machakann/vim-sandwich'
Plug 'justinmk/vim-sneak'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mg979/vim-visual-multi'

" Utilities
Plug 'karb94/neoscroll.nvim'
Plug 'gennaro-tedesco/nvim-peekup'
Plug 'ourigen/skyline.vim'
Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' }
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Misc
Plug 'ryanoasis/vim-devicons'
Plug 'dstein64/vim-startuptime'
"Plug 'edkolev/tmuxline.vim'

" Filetype
Plug 'lervag/vimtex', { 'for': 'tex' }

"{{{COLORSCHEMES----------------------------------
Plug 'romainl/Apprentice'
Plug 'ayu-theme/ayu-vim'
Plug 'sjl/badwolf'
Plug 'nightsense/cosmic_latte'
Plug 'romainl/vim-dichromatic'
Plug 'romgrk/doom-one.vim'
Plug 'sainnhe/everforest'
Plug 'fcpg/vim-fahrenheit'
Plug 'lifepillar/vim-gruvbox8'
Plug 'sainnhe/gruvbox-material'
Plug 'KeitaNakamura/neodark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'fcpg/vim-orbital'
Plug 'reedes/vim-colors-pencil'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'lifepillar/vim-solarized8'
Plug 'srcery-colors/srcery-vim'
Plug 'nightsense/stellarized'
"----------------------------------------------}}}

call plug#end()
"----------------------------------------------}}}

"{{{PLUGIN CONFIGS--------------------------------

"{{{Fugitive
nnoremap <nowait><silent> <leader>g :Git<CR>
nnoremap <nowait><silent> <leader>gd :Gvdiffsplit<CR>
nnoremap <nowait><silent> <leader>gw :Gwrite<CR>
"}}}

"{{{FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

command! Dots GFiles ~/dotfiles

nnoremap <nowait><silent> <leader>fz :Files <CR>
nnoremap <nowait><silent> <leader>fg :GFiles <CR>
nnoremap <nowait><silent> <leader>fl :Lines <CR>
nnoremap <nowait><silent> <leader>fb :Buffers<CR>
nnoremap <nowait><silent> <leader>fc :Commits<CR>
"}}}

"{{{GitGutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
"}}}

lua require('neoscroll').setup()

"source ~/.config/nvim/plugin-config/tmuxline.vim

" Undotree
nnoremap <nowait><silent> <leader>ut :UndotreeToggle<CR>

"{{{Vimtex
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}

let g:vimtex_view_general_viewer='zathura'
"}}}

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
colorscheme doom-one
"----------------------------------------------}}}

"{{{REMAPS----------------------------------------
" Basic leader commands to write and write+quit
nnoremap <nowait><silent> <leader>w :w<CR>
nnoremap <nowait><silent> <leader>wq :wq<CR>

" Better indenting
" See https://github.com/ChristianChiarulli/nvim/blob/56f65b12a446fe05483a23585dd4e3104205b062/keys/mappings.vim#L13-L14
vnoremap < <gv
vnoremap > >gv

" Opens the "latest url file in my dropbox
command! LURL vsplit /mnt/c/Users/Shreeram\ Modi/dropbox/personal/Latest_Url.txt

" Make j and k move using visual lines instead of hard lines
nnoremap <expr><silent> j v:count ? 'j' : 'gj'
nnoremap <expr><silent> k v:count ? 'k' : 'gk'
vnoremap <expr><silent> j v:count ? 'j' : 'gj'
vnoremap <expr><silent> k v:count ? 'k' : 'gk'

" Use arrow keys to resize splits
nnoremap <nowait><silent> <M-j> :resize +2<CR>
nnoremap <nowait><silent> <M-k> :resize -2<CR>
nnoremap <nowait><silent> <M-h> :vertical resize -2<CR>
nnoremap <nowait><silent> <M-l> :vertical resize +2<CR>

" Shortcutting split navigation, saving a keypress:
noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l

"{{{LATEX/MARKDOWN---------------------------------
" Compiling Latex via xelatex
nnoremap <nowait><silent> <leader>cl :<c-u>silent !xelatex '%:p:r'<CR>
" Compile bibliography using biber
nnoremap <nowait><silent> <leader>cb :<c-u>silent !biber '%:p:r'<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex silent !latexmk -c
"----------------------------------------------}}}

"{{{F-KEYS----------------------------------------
" Triggers omnifunc
inoremap <silent> <F8> <C-x><C-o>

" Changes whether search results are highlighted or not
noremap <nowait><silent> <F11> :set hlsearch!<CR>

" Sets up vim to write prose
noremap <nowait><silent> <F3> :<C-u>set textwidth=72 colorcolumn=73 spell linebreak<CR>:<C-u>let &showbreak = '   '
"-----------------------------------------------}}}

" Quick way to switch between light and dark mode
command! Light set background=light
command! Dark set background=dark

"{{{TEMPLATES-------------------------------------
" Template for MLA formatted writing in LaTeX. See the file for the actual template
command! MLAtex read ~/.config/nvim/templates/MLAtex.tex

" Template for MLA formatted markdown document that compiles with pandoc. See the file for the actual template
command! MLAmd read ~/.config/nvim/templates/MLAmd.md
"----------------------------------------------}}}
"----------------------------------------------}}}
