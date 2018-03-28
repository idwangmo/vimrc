let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'

" 补全
set completeopt=longest,menu  " 下拉的补全菜单

" 回车选中当前项
let g:ycm_key_list_stop_completion = ['<CR>']

" 键位
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 配置
let g:ycm_collect_identifiers_from_tags_files = 1  " 基于标签的引擎
let g:ycm_min_num_of_chars_for_completion = 1  " 1个字符开始补全
let g:ycm_cache_omnifunc = 0  " 禁止缓存
let g:ycm_seed_identifiers_with_syntax = 1  " 语法关键字补全
let g:ycm_complete_in_comments = 1  " 补全注释
let g:ycm_complete_in_strings = 1  " 补全字符串
let g:ycm_auto_trigger = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1  " 将注释和字符串收录到补全信息中
let g:ycm_confirm_extra_conf=0  " 关闭加载.ycm_extra_conf.py的提示

" 补全的开始位置的设置
let g:ycm_semantic_triggers = get(g:, 'ycm_semantic_triggers', {})

function! s:set_ft_triggers(ft, expr, override) abort
  if a:override
    let g:ycm_semantic_triggers[a:ft] = a:expr
  elseif !has_key(g:ycm_semantic_triggers, a:ft)
    let g:ycm_semantic_triggers[a:ft] = a:expr
  endif
endfunction

call s:set_ft_triggers('c', ['->', '.'], 0)
call s:set_ft_triggers('cpp', ['->', '.', '::'], 0)
call s:set_ft_triggers('perl', ['->'], 0)
call s:set_ft_triggers('javascript,python,go', ['.'], 0)
call s:set_ft_triggers('java,jsp', ['.'], 0)
call s:set_ft_triggers('vim', ['re![_a-zA-Z]+[_\w]*\.'], 0)
call s:set_ft_triggers('sh', ['re![\w-]{2}', '/', '-'], 0)
call s:set_ft_triggers('zsh', ['re![\w-]{2}', '/', '-'], 0)

" 自动关闭窗口
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

