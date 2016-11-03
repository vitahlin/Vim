## ctrlp-funky

GitHub：[https://github.com/tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)

帮助在当前文件内搜索函数。需要插件[`ctrlp`](https://github.com/vitahlin/Vim/tree/master/ctrlp)的支持。

### 安装

```c
Plugin 'tacahiroy/ctrlp-funky'
```

### 设置

在`.vimrc`中设置：

```c
" ctrlp-funky 查找函数
"-------------------------------------------------------------------
" 设置快捷键为 \fu
nnoremap <Leader>fu :CtrlPFunky<Cr>

" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
"-------------------------------------------------------------------
```