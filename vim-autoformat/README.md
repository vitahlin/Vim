
## vim-autoformat

Github：[https://github.com/Chiel92/vim-autoformat](https://github.com/Chiel92/vim-autoformat)

用于代码格式化，支持多种代码格式的格式化插件。

### 安装
直接使用`Bundle`安装即可。
```c
Plugin 'Chiel92/vim-autoformat'
```
对`C/C++`格式化需要安装`astyle`，格式化Python代码则需要`yapf`支持。

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

#### 对`Python`的格式化
安装`yapf`:
```c
sudo pip install yapf
```

安装完后在`.vimrc`中设置：
```c 
let g:formatter_yapf_style = 'pep8'
au BufWrite *.py :Autoformat
```
即可在保存`Python`代码时自动格式化。

#### 对C的格式化

安装`astyle`:
```c
brew install astyle
```

然后在`vimrc`文件中增加配置，这样即采用`astyle`默认的格式化规则，要查看更多对格式化规则请参看：[http://astyle.sourceforge.net/](http://astyle.sourceforge.net/):
```c
let g:autoformat_remove_trailing_spaces = 1
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
autocmd FileType vim,tex let b:autoformat_autoindent=0

set autoread

# 自动格式化
au BufWrite *.c :Autoformat
au BufWrite *.cpp :Autoformat
au BufWrite *.h :Autoformat
```



