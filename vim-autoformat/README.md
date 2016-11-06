
## vim-autoformat

Github：[https://github.com/Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat)

用于代码格式化，支持多种代码格式的格式化插件。

### 安装
直接使用`Bundle`安装即可。
```c
Plugin 'Chiel92/vim-autoformat'
```
需要安装`astyle`，格式化Python代码则需要`yapf`支持。

### 设置

#### 在`.vimrc`中添加设置：

```c
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

" js和json文件保存时自动格式化
set autoread
au BufWrite *.js :Autoformat
au BufWrite *.json :Autoformat
"------------------------------------

```

#### 对`JavaScript`和`Json`文件的格式化
需要用 `npm` 安装 `js-beautify` :
```c 
npm install -g js-beautify
```



