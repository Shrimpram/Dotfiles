nnoremap <silent> <leader>fv :Fern . -opener=vsplit -reveal=%<CR>
nnoremap <silent> <leader>fs :Fern . -opener=split -reveal=%<CR>

let g:fern#disable_default_mapping ='1'
let g:fern#renderer#default#leading =" "
let g:fern#renderer#default#root_symbol ="~"
let g:fern#renderer#default#leaf_symbol =" "
let g:fern#renderer#default#collapsed_symbol =""
let g:fern#renderer#default#expanded_symbol =""


function! FernInit() abort
    nmap <buffer><expr>
            \ <Plug>(fern-my-open-expand-collapse)
            \ fern#smart#leaf(
            \ "\<Plug>(fern-action-open)",
            \ "\<Plug>(fern-action-expand)",
            \ "\<Plug>(fern-action-collapse)",
            \ )
    nmap <buffer> o <Plug>(fern-my-open-expand-collapse)
    nmap <buffer> H <Plug>(fern-action-hidden:toggle)
    nmap <buffer> / <Plug>(fern-action-include)
    nmap <buffer> R <Plug>(fern-action-reload)
    nmap <buffer> < <Plug>(fern-action-leave)
    nmap <buffer> > <Plug>(fern-action-enter)
    nmap <buffer> t <Plug>(fern-action-mark:toggle)
    nmap <buffer> <esc> <Plug>(fern-action-mark:clear)
    nmap <buffer> f <Plug>(fern-action-new-path)
    nmap <buffer> y <Plug>(fern-action-copy)
    nmap <buffer> d <Plug>(fern-action-move)
    nmap <buffer> D <Plug>(fern-action-trash)
    nmap <buffer> r <Plug>(fern-action-rename)
    nmap <buffer> <CR> <Plug>(fern-action-open:select)
endfunction

augroup FernGroup
    autocmd!
    autocmd FileType fern call FernInit()
augroup END
