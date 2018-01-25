" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" 语法检测
let g:syntastic_python_checkers=['python', 'flake8']

" 语法高亮(听说默认的更好)
let g:polyglot_disabled = ['python']

" yapf的设置
map <Leader>y :call yapf#YAPF()<cr>

" isort的设置
let g:vim_isort_map = '<Leader>s'
let g:vim_isort_python_version = 'python3'
