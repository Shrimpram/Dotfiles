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
    let s:clip = '/mnt/c/Windows/System32/clip.exe'
    if executable(s:clip)
        augroup WSLYank
            autocmd!
            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
    endif
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

" Undotree
nnoremap <silent> <leader>ut :UndotreeToggle<CR>

"{{{Vimtex
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}

let g:vimtex_view_general_viewer='zathura'
"}}}

"----------------------------------------------}}}

set background=dark
colorscheme stella

"{{{REMAPS----------------------------------------
" Basic leader commands to write and write+quit
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>wq :wq<CR>

" Better indenting
" See https://github.com/ChristianChiarulli/nvim/blob/56f65b12a446fe05483a23585dd4e3104205b062/keys/mappings.vim#L13-L14
vnoremap < <gv
vnoremap > >gv

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

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex silent !latexmk -c

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

"----------------------------------------------}}}

"{{{SKELETONS-------------------------------------
augroup templates
    autocmd!
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
augroup END
"-------------------------------------------------
