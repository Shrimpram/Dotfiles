let g:skyline_encoding=0
let g:skyline_fileformat=0

function Proseline()
    let g:skyline_wordcount=1
endfunction

autocmd FileType tex call Proseline()
autocmd FileType markdown call Proseline()
