"**********************
"" Vim-PLug
"**********************
if has('vim_starting')
  set nocompatible  " 关闭兼容模式
endif

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'  " git历史
Plug 'jiangmiao/auto-pairs' " 自动补全括号
Plug 'majutsushi/tagbar'  " 代码组成
Plug 'w0rp/ale'  " 语法检测
Plug 'Yggdroot/indentLine' " 对齐线
Plug 'sheerun/vim-polyglot'  " 语言集合
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'  " 文件查找
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'haya14busa/incsearch.vim'  " 高亮搜索内容
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang --go-completer  --js-completer --rust-completer' }
Plug 'junegunn/vim-easy-align'  " 等号对齐
Plug 'luochen1990/rainbow'  " 高亮括号
Plug 'ntpeters/vim-better-whitespace'  " 去除多余括号
Plug 'ervandew/supertab'  " 增强tab
Plug 'scrooloose/nerdcommenter'  " 代码注释
Plug 'ryanoasis/vim-devicons'  " Vim Dev Icons

"" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Color
Plug 'flazz/vim-colorschemes'

"" editconfig
Plug 'editorconfig/editorconfig-vim'

"" python
Plug 'raimon49/requirements.txt.vim'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
Plug 'fisadev/vim-isort'

"" html
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'

"" docker
Plug 'ekalinin/dockerfile.vim'

call plug#end()

" Required:
filetype plugin indent on

" *****************************
" vim config
" *****************************
" <Leader> key set
let mapleader = "\<Space>"


" YouCompleteMe配置
source $HOME/.vim/config/YouCompleteMe.vim

" ale配置
source $HOME/.vim/config/ale.vim

" 背景颜色配置
colorscheme onedark
