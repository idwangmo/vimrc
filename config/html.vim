" element config
let g:user_emmet_install_global = 0

" filetype setting
autocmd FileType html,css,vue EmmetInstall
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
" autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" element的快捷键
let g:user_emmet_expandabbr_key = '<c-y>'

