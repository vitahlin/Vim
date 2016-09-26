
## vim-autoformat
用于代码格式化，支持多种代码格式的格式化插件。

Github：[https://github.com/Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat)

#### 在`vimrc`中配置：

```c
" 文件保存时根据文件类型自动调用对应的格式化插件
au BufWrite *.c :Autoformat
au BufWrite *.cpp :Autoformat
au BufWrite *.py :Autoformat

let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
autocmd FileType vim,tex let b:autoformat_autoindent=0
let g:formatdef_harttle = '"astyle --style=kr --pad-oper --add-brackets"'
let g:formatters_cpp = ['harttle']
let g:formatters_java = ['harttle']

" 格式化python文件
let g:formatter_yapf_style = 'pep8'
```

### 1. 安装
直接使用`Bundle`安装即可。
```c
Bundle 'Chiel92/vim-autoformat'
```
需要安装`astyle`，格式化Python代码则需要`yapf`支持。



