" vim-python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" 语法检测
let g:syntastic_python_checkers=['python', 'flake8']

" 语法高亮(听说默认的更好)
let g:polyglot_disabled = ['python']

" yapf的设置
map <Leader>y :call yapf#YAPF()<cr>
map <Leader>Y :YAPF<cr>

" isort的设置
map <Leader>I :Isort<cr>
let g:vim_isort_python_version = 'python3'
