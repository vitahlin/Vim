" Configuration file for vim

set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" 配置立即生效的配置
"autocmd BufWritePost ~/.vimrc source ~/.vimrc

set shortmess=atI
winpos 100 130

" 共享剪贴板
set clipboard+=unnamed

set completeopt-=preview

set cmdheight=2
set ruler
set showcmd
set number
set autochdir
set autowrite
set autowriteall
set autoread
set confirm
set scrolloff=3
set wildmenu
set history=50

" 字符间插入的像素行数目
set linespace=0

set showmatch
set matchtime=2

" 主题颜色配置
"set background=dark
set guifont=Source_Code_Pro:h14
colorscheme solarized

" 语法高亮
syntax on
syntax enable

" 用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" search
set hlsearch
set incsearch

set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" 智能对齐
set smartindent
set autoindent

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" bakcspace
set backspace=eol,start,indent

" backup
set nobackup
set nowb
set noswapfile

"filetype plugin indent on
"filetype plugin off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Bundle 'L9'
Bundle 'gmarik/vundle'

" 我的插件
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/syntastic'
Bundle 'jiangmiao/auto-pairs'
Bundle 'scrooloose/nerdcommenter'

Bundle 'altercation/vim-colors-solarized'

Bundle 'tagbar'

" 更好的js语法支持
Bundle 'pangloss/vim-javascript'

" 更好的js语法高亮
Bundle 'othree/yajs.vim'

" js各类框架 库的高亮支持
Bundle 'othree/javascript-libraries-syntax.vim'

" 自动选择括号等符号中的内容
Bundle 'terryma/vim-expand-region'

" 显示代码行后面的空格
Bundle 'bronson/vim-trailing-whitespace'

" 自动补全
Bundle 'Valloric/YouCompleteMe'


"c++代码高亮
Bundle 'octol/vim-cpp-enhanced-highlight'

Bundle 'junegunn/vim-easy-align'

" 多文件编辑
Bundle 'fholgado/minibufexpl.vim'

" 窗口管理
Bundle 'winmanager'

" 文件搜索
Bundle 'kien/ctrlp.vim'

" 文件内函数搜索
Bundle 'tacahiroy/ctrlp-funky'

" 代码格式化
Bundle 'Chiel92/vim-autoformat'
Bundle 'maksimr/vim-jsbeautify'

" 全局搜索
Bundle 'dyng/ctrlsf.vim'

" 多重括号颜色高亮
Bundle 'kien/rainbow_parentheses.vim'

call vundle#end()
filetype plugin indent on


set tags+=~/Downloads/SeaBattle/SeaBattleServer/tags
set autochdir

 
" powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" nerdtree
map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeWinPos='left'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=0
let neocomplcache_enable_at_startup = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <C-m> :TagbarToggle<CR>

" minibufexplilet
"let g:miniBufExplMapWindowNavVim = 1   "按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapWindowNavArrows = 1  "按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapCTabSwitchBufs = 1   "启用以下两个功能：Ctrl+tab移到下一个窗口
let g:miniBufExplModSelTarget=1  "不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

" winmanager
let g:winManagerWindowLayout='FileExplorer'
let g:winManagerWidth =40
nmap wm :WMToggle<cr>
"定义快捷键
nmap <silent> <F7> :WMToggle<cr>
"let g:AutoOpenWinManager = 1 "开启Vim时自动打开

" ctrip
map <C-p> :CtrlPMixed<CR>
map <leader>f :CtrlPMRU<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.exe,*.jpg,*.rar,*.doc,*.png,*.jpeg,*.tar,*.xlsx,*.mk,*.Makefile,*.pdf,*.mk,*.dmg,*.bat
set wildignore+=*/Applications/*
set wildignore+=*/Library/*,*/Music/*,*/Pictures/*,*/Movies/*,*/Others/*,*/Doc/*
set wildignore+=*/logs/*,*/node_modules/*,*/Applications/*,*/apt-vim/*,*/Book/*,*/zhao/*,*/Desktop/*,*/Software/*,*/Gitignore/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|node_modules|Library|Applications)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|bat|png)$',
    \ }
"let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=50
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=300
let g:ctrlp_follow_symlinks=1
let g:ctrlp_working_path_mode = 'ra'
nnoremap <silent> <C-t> :ClearAllCtrlPCache<CR>\|:CtrlP<CR>

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']

" ============================================================================
" ============================================================================
"                               自动添加作者信息设置
" ============================================================================
" ============================================================================
map <F4> :call AddTitleForJS()<cr>
function AddTitleForJS()
	call append(0,"'use strict';")
    call append(1,"// Copyright 2016 TianLe Inc. All Rights Reserved.")
    call append(2,"")
    call append(3,"/**")
    call append(4," * @created ".strftime("%Y/%m/%d"))
    call append(5," * @filename ".expand("%:t"))
    call append(6," * @author linw1225@163.com(vitah)")
    call append(7," * @fileoverview")
    call append(8," */")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf


map <F6> :call AddTitleForC()<cr>
function AddTitleForC()
    call append(0,"/**")
    call append(1," * @created ".strftime("%Y/%m/%d"))
    call append(2," * @filename ".expand("%:t"))
    call append(3," * @author linw1225@163.com(vitah)")
    call append(4," * @fileoverview")
    call append(5," */")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf

" ===============================================================================
"                             编译运行C++11程序
" ===============================================================================
" <F5> 编译和运行C/C++
map <F8> :call CompileCpp()<CR>
function CompileCpp()
    set makeprg=g++\ -o\ %<\ %
    silent make
    let myfile=expand("%:r")
    if filereadable(myfile)
        execute "! ./%< && rm ./%<"
	else
        cope5
    endif
endfunction

" ===============================================================================
"                            代码格式化设置
" ===============================================================================
" 文件保存时根据文件类型自动调用对应的格式化插件
au BufWrite *.c :Autoformat
au BufWrite *.cpp :Autoformat
"au BufWrite *.py :Autoformat
au BufWrite *.js : call g:JsBeautify()
au BufWrite *.json : call g:JsBeautify()

let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
autocmd FileType vim,tex let b:autoformat_autoindent=0
let g:formatdef_harttle = '"astyle --style=kr --pad-oper --add-brackets"'
let g:formatters_cpp = ['harttle']
let g:formatters_java = ['harttle']

" 格式化python文件
let g:formatter_yapf_style = 'pep8'

"autocmd FileType javascript noremap :call JsBeautify()
"autocmd FileType html noremap :call HtmlBeautify()
"autocmd FileType css noremap :call CSSBeautify()


" 全局搜索
nmap <C-S><C-F> :CtrlSF 
nmap <C-S>o :CtrlSFOpen<CR>
nmap ss :CtrlSF <C-R><C-W><CR>
vnoremap ss y:CtrlSF <C-R>"<CR>
let g:ctrlsf_default_root = 'project'


" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
"在注释输入中也能补全
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_cache_omnifunc=0

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
