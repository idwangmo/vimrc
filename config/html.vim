" element config
let g:user_emmet_install_global = 0

" filetype setting
autocmd FileType html,css EmmetInstall
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4

