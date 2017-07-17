## The-NERD-tree

Github:[https://github.com/vim-scripts/The-NERD-tree](https://github.com/vim-scripts/The-NERD-tree)

Vim 中常用的文件管理插件，可以显示树形目录。

### 安装

```c
Plugin 'The-NERD-tree'
```

### 设置

在`.vimrc`中添加快捷键及设置窗口宽度等，这边我们映射快捷键`F2`，用来打开和关闭显示窗口：
```c
" The-NERD-tree
"--------------------------------------------------------
nmap <silent> <F2> :NERDTreeMirror<CR>
nmap <silent> <F2> :NERDTreeToggle<CR>
"窗口大小
let NERDTreeWinSize=30
"窗口位置
let NERDTreeWinPos='left'
"是否默认显示行号
let NERDTreeShowLineNumbers=1
"是否默认显示隐藏文件
let NERDTreeShowHidden=0
"--------------------------------------------------------
```