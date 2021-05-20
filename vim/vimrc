"-------------------------------------------------
" GENERAL SETTINGS                               |
"-------------------------------------------------
set encoding=UTF-8		" Changes encoding (necessary for devicons)
set autoindent			" Good auto indent
set conceallevel=0		" So that I can see `` in markdown files
set hidden			" Makes buffers hide instead of exit when you load a new file without saving
set ignorecase			" Searching is case insensitive
set incsearch			" Incremental search (search will start as you type)
set iskeyword+=-		" treat dash separated words as a word text object"
set nohlsearch			" Search will stop highlighting the word after you hit 'Enter'
set noshowmode			" Do not show the --INSERT-- etc. tooltip at the bottom. Since lighline does this the built in feature is redundant
set noswapfile			" No swap file when editing text. I use Dropbox for a lot of my files and swap files mess with it
set number			" Shows line numbers on the side
set relativenumber		" Line numbers become relative instead of absolute
set ruler			" Show the cursor position all the time
set scrolloff=5			" Screen starts scrolling 5 lines from the top/bottom
set smartindent			" Makes indenting smart
set termguicolors
set updatetime=100		" Sets vim's update time to 100ms instead of default 4000ms
set updatetime=300		" Faster completion
set wrap			" Text wraps after it reaches the end


let mapleader = " "		" Maps leader key (to space)
let maplocalleader = " "	" Maps local leader key (to space)

" Saves folds when I leave a document
" https://www.reddit.com/r/vim/comments/hch40s/make_views_automatic_error_every_time_i_open_a/


set clipboard+=unnamedplus


"-------------------------------------------------
" PLUGINS                                        |
"-------------------------------------------------
call plug#begin('~/.vim/.plugged')

"------------------------
" Utilities             |
"------------------------
" QOL
Plug 'kana/vim-fakeclip'
Plug 'junegunn/goyo.vim'				" Distraction-free writing, focuses only on the text input
" Plug 'itchyny/lightline.vim'				" Status bar
Plug 'junegunn/limelight.vim'				" Dim every line except the one you're on
Plug 'mhinz/vim-startify'				" Vim start screen
Plug 'ryanoasis/vim-devicons'				" Adds filetype glyphs for plugins


" Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	" Fuzzy file finding in vim
Plug 'junegunn/fzf.vim'					" ^
Plug 'preservim/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle'] }		" File explorer
Plug 'Xuyuanp/nerdtree-git-plugin'			" Git symbols in nerdtree
Plug 'dylanaraps/fff.vim'				" FFF but inside vim


" Git
Plug 'airblade/vim-gitgutter'				" Display git icons in signcolumn
Plug 'tpope/vim-fugitive'				" Vim tool for git
Plug 'rhysd/committia.vim'				" Better Git commit editing
Plug 'junegunn/gv.vim'					" Browse through commit history


" Tmux
Plug 'edkolev/tmuxline.vim'				" Tmux statusline to match vim's statusline


" Misc
Plug 'mbbill/undotree'					" Undo history
Plug 'junegunn/vim-peekaboo'				" View register contents


"------------------------
" Text Editing          |
"------------------------
" Tools
Plug 'tpope/vim-commentary'				" Improved comments
Plug 'tpope/vim-surround'				" Edit surrounding environments easier
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'			" Multiple cursors
" Plug 'SirVer/ultisnips'				" Engine for using snippets
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }	" Latex live preview
Plug 'brennier/quicktex'				" Faster and better snippets, especially since my use case is mostly latex
Plug 'reedes/vim-wordy'					" Grammar and word usage problem finder


" Navigation
Plug 'easymotion/vim-easymotion'			" MUCH better navigation
" Plug 'psliwka/vim-smoothie'				" Smooth scrolling. Not using because of horrendous screen tearing
" Plug 'unblevable/quick-scope'
Plug 'justinmk/vim-sneak'


" Syntax

" Misc latex functions & syntax highlighting
Plug 'lervag/vimtex',
			\{ 'for': 'tex' }
Plug 'tpope/vim-speeddating'				" Change dates better


"------------------------
" Colorschemes          |
"------------------------
" Plug 'AlessandroYorba/Alduin'
Plug 'ayu-theme/ayu-vim'
" Plug 'AlessandroYorba/Breve'
" Plug 'AlessandroYorba/Despacio'
Plug 'dracula/vim'
Plug 'sainnhe/everforest'
Plug 'fcpg/vim-fahrenheit'
" Plug 'romainl/flattened'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'reedes/vim-colors-pencil'
" Plug 'junegunn/seoul256.vim'
Plug 'lifepillar/vim-solarized8'
" Plug 'altercation/vim-colors-solarized'
Plug 'srcery-colors/srcery-vim'
" Plug 'tpope/vim-vividchalk'


call plug#end()


"-------------------------------------------------
" Plugin Configs                                 |
"-------------------------------------------------
source ~/.config/nvim/plugin-config/airline.vim

source ~/.config/nvim/plugin-config/easymotion.vim

source ~/.config/nvim/plugin-config/fff.vim

source ~/.config/nvim/plugin-config/fzf.vim

source ~/.config/nvim/plugin-config/latex-live-preview.vim

source ~/.config/nvim/plugin-config/nerdtree.vim

source ~/.config/nvim/plugin-config/peekaboo.vim

source ~/.config/nvim/plugin-config/startify.vim

source ~/.config/nvim/plugin-config/tmuxline.vim

source ~/.config/nvim/plugin-config/ultisnips.vim

source ~/.config/nvim/plugin-config/undotree.vim

source ~/.config/nvim/plugin-config/vimagit.vim

source ~/.config/nvim/plugin-config/quicktex.vim


"-------------------------------------------------
" Colorscheme Config
"-------------------------------------------------
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
colorscheme gruvbox-material


"-------------------------------------------------
" REMAPS                                         |
"-------------------------------------------------

"------------------------
" Utility               |
"------------------------
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
command! LURL vsplit /mnt/c/Users/Shreeram Modi/dropbox/personal/Latest_Url.txt


"------------------------
" Navigation            |
"------------------------
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
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


"------------------------
" Latex/Markdown        |
"------------------------
" Compiling Latex via xelatex
nnoremap <nowait><silent> <leader>cl :<c-u>silent !xelatex '%'<CR>
" Compile bibliography using biber
nnoremap <nowait><silent> <leader>cb :<c-u>silent !biber '%:r'<CR>

" Compiling Markdown via pandoc
" See https://vi.stackexchange.com/questions/17549/using-pandoc-with-vim-keybindings
augroup my_markdown
	autocmd!
	autocmd FileType markdown nnoremap <buffer><nowait><silent> <leader>cm :<c-u>silent call system('pandoc '.expand('%:p:S').' -o '.expand('%:p:r:S').'.pdf')<cr>
augroup END

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex silent !latexmk -c


"------------------------
" Aesthetics            |
"------------------------
" Quick way to switch between light and dark mode
command! Light set background=light
command! Dark set background=dark


"--------------------------------------------------
" Templates                                       |
"--------------------------------------------------

" Template for MLA formatted writing in LaTeX. See the file for the actual template
command! MLAtex read ~/.config/nvim/templates/MLAtex.tex

" Template for MLA formatted markdown document that compiles with pandoc. See the file for the actual template
command! MLAmd read ~/.config/nvim/templates/MLAmd.md




" WRITEMODE
" Writemode for writing prose
" Followed this reddit thread
" https://www.reddit.com/r/vim/comments/ckyspu/heres_how_to_create_custom_workspaces_to_switch/
":command Writemode set spell | Goyo 70 | set showmode | set guifont=JetBrains_Mono:h12
"
":command Codemode set nospell | Goyo! | set noshowmode | set guifont=JetBrains_Mono:h12
