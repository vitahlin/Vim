## tagbar

Github:[https://github.com/vim-scripts/Tagbar](https://github.com/vim-scripts/Tagbar)

taglist的替代品，显示当前文件的变量、函数等。

### 安装

```c
Plugin 'Tagbar'
```

### 设置

在`.vimrc`中添加快捷键及设置窗口宽度等
```c
" tagbar 显示当前文件的变量、函数等
"----------------------------------------
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <C-m> :TagbarToggle<CR>
"----------------------------------------
```

### 可能出现问题

#### `Ctags` 错误
打开窗口时提示 `ctags` 相关错误：`Ctags doesn't seem to be Exuberant Ctags!`
因为 Mac 自带的 `ctags` 不是 `exuberant ctags`，所以需要通过 `brew` 安装 `ctags` :
```c
brew install ctags
```
