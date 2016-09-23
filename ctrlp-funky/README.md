## ctrlp-funky

帮助在当前文件内搜索函数。需要插件**[`ctrlp`](https://github.com/vitahlin/Vim/tree/master/ctrlp)**的支持。

GitHub：[https://github.com/tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)

#### 在`.vimrc`中的设置

```c
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
```

### 安装
```c
Bundle 'tacahiroy/ctrlp-funky'
```

### 具体设置
- `nnoremap <Leader>fu :CtrlPFunky<Cr>`将快捷键设为`\fu`

