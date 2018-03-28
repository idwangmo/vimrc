" *****************************
" EasyAlign config
" *****************************
nmap <Leader>ea <Plug>(EasyAlign)

" *****************************
" rainbow config
" *****************************
let g:rainbow_active = 1

" *****************************
" nerdcommenter config
" *****************************
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" *****************************
" indent plugin config
" *****************************
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_size = 1
:nmap <silent> <Leader>d <Plug>IndentGuidesToggle

