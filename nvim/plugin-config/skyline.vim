let g:skyline_encoding=0
let g:skyline_fileformat=0

let s:proseline_toggled=1

function Proseline()
    if s:proseline_toggled
        let g:skyline_wordcount=1
        let s:proseline_toggled=0
    else
        let g:skyline_wordcount=0
        let s:proseline_toggled=1
    endif
endfunction

"autocmd FileType tex call Proseline()
"autocmd FileType markdown call Proseline()
