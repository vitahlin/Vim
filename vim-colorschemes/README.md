## vim-colorschemes

Github:[https://github.com/flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)

包含多种`Vim`主题。

### 安装

```c 
Plugin 'flazz/vim-colorschemes'
```

### 设置

安装完后，需要复制主题文件到对应目录。

```c 
cp -R ~/.vim/bundle/vim-colorschemas/colors/* ~/.vim/colors

```

把所有主题复制到目录`~/.vim/colors/`下。
然后在`.vimrc`文件中设置要使用的主题：

```c
" 主题设置
syntax enable
set background=dark
colorscheme solarized
```