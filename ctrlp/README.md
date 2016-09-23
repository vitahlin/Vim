## ctrlp

它可以快速的帮助我们找到项目中的文件。在vim normal模式下，按下ctrl+p，然后输入你要寻找的文件就行了。当然还有其他一些快捷查找键，如正则查找等。类似在atom和sublime中的`Cmd-p`查找。

GitHub：[https://github.com/kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)

#### 在`.vimrc`中的设置
```c
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
```

### 安装
```c
Bundle 'kien/ctrlp.vim'
```

### 具体设置
- `map <C-p> :CtrlPMixed<CR>`将快捷键设为`Ctrl+p`
- `set wildignore`设置该插件要忽略的文件或者目录
- `nnoremap <silent> <C-t> :ClearAllCtrlPCache<CR>\|:CtrlP<CR>`则是将快捷键`Ctrl+t`的功能设为重新生成缓存再进行搜索，在新建文件时，需要重新生成缓存，不然ctrlp不能识别到新的文件。

