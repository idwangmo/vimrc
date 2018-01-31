" 图标
let g:ale_sign_error='✖'
let g:ale_sign_warning='➤'
let g:ale_sign_info='⚠'

" 信息格式
let g:ale_echo_msg_format = '%severity%: %linter%: %s'

" ale检测的提示
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 750
let g:ale_sign_column_always = 1

" 状态栏显示错误数量
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

let current_scheme = get(g:, 'colors_name', 'onedark')
if current_scheme == 'gruvbox'
  highlight link ALEErrorSign GruvboxRedSign
  highlight link ALEWarningSign GruvboxYellowSign
endif

" 自定义linter
let g:ale_linters = {'python': ['flake8']}

