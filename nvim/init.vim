"{{{GENERAL SETTINGS------------------------------
syntax on

filetype plugin on
filetype indent on

let mapleader = " "		" Maps leader key (to space)
let maplocalleader = " "	" Maps local leader key (to space)

"{{{DIRECTORIES-----------------------------------
set directory^=~/.local/share/nvim/swap
set undodir=~/.local/share/nvim/undo
"----------------------------------------------}}}

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
set number relativenumber
set ruler
set scrolloff=3
set shiftwidth=4
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
set termguicolors
set timeoutlen=250
set title
set undofile
set wrap
set clipboard+=unnamedplus

let os=substitute(system('uname'), '\n', '', '')
if os != 'Darwin'
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
endif

"----------------------------------------------}}}

lua require('plugins')

lua require('utils')

"{{{PLUGIN CONFIGS--------------------------------

let g:Hexokinase_highlighters = ['virtual']

"{{{Lexical
augroup lexical
    autocmd!
    autocmd FileType markdown,mkd call lexical#init()
    autocmd FileType textile call lexical#init()
    autocmd FileType text call lexical#init()
augroup END

let g:lexical#thesaurus = ['~/.config/nvim/spell/moby-thesaurus.txt']

let g:lexical#dictionary = ['~/.config/nvim/spell/dwyl-dict.txt']

let g:lexical#spellfile = ['~/.config/nvim/spell/en.utf-8.add']
"}}}

lua require('neoscroll').setup()

" Undotree
nnoremap <silent> <leader>ut :UndotreeToggle<CR>

"{{{Vimtex
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}

let g:vimtex_view_general_viewer='zathura'
"}}}

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
colorscheme stella
"----------------------------------------------}}}

"{{{REMAPS----------------------------------------
" Basic leader commands to write and write+quit
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>wq :wq<CR>

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
lua vim.api.nvim_set_keymap("n", [[<M-j>]], "<cmd>lua require('utils').resize(false, 2)<CR>", {silent=true, noremap=true})
lua vim.api.nvim_set_keymap("n", [[<M-k>]], "<cmd>lua require('utils').resize(false, -2)<CR>", {silent=true, noremap=true})
lua vim.api.nvim_set_keymap("n", [[<M-h>]], "<cmd>lua require('utils').resize(true, -2)<CR>", {silent=true, noremap=true})
lua vim.api.nvim_set_keymap("n", [[<M-l>]], "<cmd>lua require('utils').resize(true, 2)<CR>", {silent=true, noremap=true})

" Shortcutting split navigation, saving a keypress:
noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l

"{{{LATEX/MARKDOWN---------------------------------
" Compiling Latex via xelatex
nnoremap <silent> <leader>cl :<c-u>silent !xelatex '%:p:r'<CR>
" Compile bibliography using biber
nnoremap <silent> <leader>cb :<c-u>silent !biber '%:p:r'<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex silent !latexmk -c
"----------------------------------------------}}}

" Quick way to switch between light and dark mode
command! Light set background=light
command! Dark set background=dark

"{{{TEMPLATES-------------------------------------
" Template for MLA formatted writing in LaTeX. See the file for the actual template
command! MLAtex read ~/.config/nvim/templates/MLAtex.tex

command! Mathtex read ~/.config/nvim/templates/Mathtex.tex

" Template for MLA formatted markdown document that compiles with pandoc. See the file for the actual template
command! MLAmd read ~/.config/nvim/templates/MLAmd.md
"----------------------------------------------}}}

"{{{F-KEYS----------------------------------------
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <silent> <F9> :<C-u>TSHighlightCapturesUnderCursor<CR>
"----------------------------------------------}}}
"----------------------------------------------}}}

nnoremap <silent> <leader>m :silent make!<CR>

augroup compilation
    autocmd!
    autocmd BufEnter *.java setlocal makeprg=javac\ %
    autocmd BufEnter *.java set errorformat=%f:%l:%c:%*\\d:%*\\d:%*\\s%m
    autocmd BufEnter *.java nnoremap <silent><nowait> <leader>r :!java %:r<CR>
    autocmd BufWritePost *.java Make %
    autocmd QuickFixCmdPost [^l]* cwindow
augroup END

"{{{SKELETONS-------------------------------------
augroup templates
    autocmd!
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
augroup END
"-------------------------------------------------
