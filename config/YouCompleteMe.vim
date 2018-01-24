let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" 补全
set completeopt=longest,menu
let g:ycm_confirm_extra_conf=0
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" 键位
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 其他
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_auto_trigger = 1

let g:ycm_semantic_triggers = get(g:, 'ycm_semantic_triggers', {})

" 补全的开始位置的设置
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

