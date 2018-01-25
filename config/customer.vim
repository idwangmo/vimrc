" *****************************
" EasyAlign config
" *****************************
nmap <Leader>ga <Plug>(EasyAlign)

" *****************************
" emment config
" *****************************
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" *****************************
" rainbow config
" *****************************
let g:rainbow_active = 1

" *****************************
" nerdcommenter config
" *****************************
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" encoding config
set encoding=utf-8

" file type
set fileformat=unix

" oepn mouse
set mouse=a

" window
set splitbelow
set splitright

" file type
filetype on
filetype plugin on
filetype plugin indent on

" line number
set number
set laststatus=2
set ruler

" hight current line
set cursorline
set cursorcolumn
set hlsearch

" syntax
syntax enable
syntax on

" search
set incsearch
set ignorecase
set nocompatible
set wildmenu

" font config
set guifont=Source\ Code\ Pro\ 15

" indent
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" other setting
set noswapfile

" autoread
set autoread

" *****************************
" indent plugin config
" *****************************
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_size = 1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" *********************
" markdown setting
" *********************
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_folding_disabled = 1
