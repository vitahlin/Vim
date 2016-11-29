
" 共享剪贴板
set clipboard+=unnamed

" 显示行号
set number 

" 设置字体及其大小
set guifont=Source_Code_Pro:h15

set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


set cmdheight=2

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

set showcmd
set autowrite
set autowriteall
set autoread
set confirm

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

set wildmenu
set history=50

" 在Visual模式时，按Ctrl+c复制选择的内容
vmap <C-c> "+y

" 字符间插入的像素行数目
set linespace=0

set showmatch
set matchtime=2

" 语法高亮
syntax on
syntax enable

" 用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" search
set hlsearch
set incsearch

" 智能对齐
set smartindent
set autoindent

" bakcspace
set backspace=eol,start,indent

" backup
set nobackup
set nowb
set noswapfile

set tags+=~/Downloads/Code/SeaBattle/SeaBattleServer/tags

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" 主题设置
syntax enable
set background=dark
colorscheme solarized

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 代码补全
Plugin 'Valloric/YouCompleteMe'

" 自动切换工作路径
Plugin 'airblade/vim-rooter'

" 状态栏美化
Plugin 'Lokaltog/vim-powerline'

" 文件搜素
Plugin 'ctrlpvim/ctrlp.vim'

" 当前文件内函数列表显示
Plugin 'tacahiroy/ctrlp-funky'

" 项目内进行全局搜索
Plugin 'dyng/ctrlsf.vim'

" 多重括号颜色区分
Plugin 'kien/rainbow_parentheses.vim'

" 括号自动补全
Plugin 'jiangmiao/auto-pairs'

" 多文件编辑
Plugin 'fholgado/minibufexpl.vim'

" 主题插件，包含多种主题，安装后还需要复制对应文件到目录
Plugin 'flazz/vim-colorschemes'

" 快速添加／删除括号
Plugin 'tpope/vim-surround'

" 显示当前文件的类、函数等
Plugin 'Tagbar'

" js高亮支持
Plugin 'pangloss/vim-javascript'

" js各类框架和库的高亮
Plugin 'othree/javascript-libraries-syntax.vim'

" 代码格式化
Plugin 'Chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required


" ctrlp-funky 查找函数
"-------------------------------------------------------------------
" 设置快捷键为 \fu
nnoremap <Leader>fu :CtrlPFunky<Cr>

" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"-------------------------------------------------------------------


" ctrlp 查找项目文件
"-----------------------------------------------------------------------------------------
" 设置打开模式为默认模式的快捷键
map <C-p> :CtrlPMixed<CR>

" 设置打开模式为打开使用过文件的模式的快捷键
map <leader>f :CtrlPMRU<CR>

" 设置要忽略的文件或者目录
set wildignore+=*.so,*.swp,*.zip,*.exe,*.jpg,*.rar,*.doc,*.docx,*.png,*.jpeg,*.tar,*.xlsx,*.mk,*.Makefile,*.pdf,*.mk,*.dmg,*.bat
set wildignore+=*/Applications/*,*/Documents/*,*/YouCompleteMe/*,*/Nutstore/*,*/tmp/*
set wildignore+=*/Library/*,*/Music/*,*/Pictures/*,*/Movies/*,*/Others/*,*/Doc/*
set wildignore+=*/logs/*,*/node_modules/*,*/Applications/*,*/apt-vim/*,*/Book/*,*/Desktop/*,*/Software/*,*/Gitignore/*
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

" 当项目中新建文件时，需要用这个模式，先清除插件缓存再查找，不然无法找到新文件
nnoremap <silent> <C-t> :ClearAllCtrlPCache<CR>\|:CtrlP<CR>
"-----------------------------------------------------------------------------------------


" ctrlsf 项目内全局搜索
"-----------------------------------------------------
nmap <C-S><C-F> :CtrlSF  " 设置为快捷键Ctrl+s Ctrl+f
nmap <C-S>o :CtrlSFOpen<CR>
nmap ss :CtrlSF <C-R><C-W><CR>
vnoremap ss y:CtrlSF <C-R>"<CR>
let g:ctrlsf_default_root = 'project'
"-----------------------------------------------------


" rainbow_parentheses 多重括号高亮
"-----------------------------------------
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
"--------------------------------------------

" vim-powerline 状态栏美化
"---------------------------------------
let g:Powerline_symbols = 'fancy'
set laststatus=2
"---------------------------------------

" tagbar 显示当前文件的变量、函数等
"----------------------------------------
let g:tagbar_width=35
let g:tagbar_autofocus=1

" 在一个tag上按回车后，自动跳转到tag在文件的位置，并关闭tagbar
let g:tagbar_autoclose=1
nmap <C-m> :TagbarToggle<CR>
"----------------------------------------

" vim-javascript js语法高亮
" ----------------------------------
"  设置为注释也添加高亮
let g:javascript_plugin_jsdoc = 1
" ----------------------------------

" javascript-libraries-syntax.vim JS各类框架和库对高亮支持
" ---------------------------------------------------------------------
let g:used_javascript_libs = 'underscore,handlebars,requirejs,jquery'
" ---------------------------------------------------------------------

" vim-autoformat 代码格式化
"------------------------------------
" 设置代码格式化快捷键
"noremap <F3> :Autoformat<CR>
"
" 删除行尾空格
let g:autoformat_remove_trailing_spaces = 1
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
autocmd FileType vim,tex let b:autoformat_autoindent=0

" 设置Python规范
let g:formatter_yapf_style = 'google'

set autoread

au BufWrite *.c :Autoformat
au BufWrite *.cpp :Autoformat
au BufWrite *.h :Autoformat
au BufWrite *.js :Autoformat
au BufWrite *.json :Autoformat
au BufWrite *.py :Autoformat
"------------------------------------

" YouCompleteMe 代码自动补全
" -------------------------------------------
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

" 设置默认的.ycm_extra_conf.py文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_cache_omnifunc=0
let g:ycm_server_keep_logfiles = 1

" 不弹出Scratch窗
set completeopt-=preview

"let g:ycm_filepath_completion_use_working_dir = 1
" -------------------------------------------
"  
"  
" vim-rooter 自动切换Vim工作路径
"--------------------------------------------
"  识别项目路径的文件
let g:rooter_patterns = ['tags', '.git/']
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1
"--------------------------------------------
