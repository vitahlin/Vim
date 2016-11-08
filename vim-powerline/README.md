
## vim-powerline

Github：[https://github.com/Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)

状态栏美化插件。

### 安装

直接用`Vundle`安装即可。
```c
Plugin 'Lokaltog/vim-powerline'
```

### 配置

将以下配置加到`.vimrc`文件中。


```c
" vim-powerline 状态栏美化 
"---------------------------------------
let g:Powerline_symbols = 'fancy'
set laststatus=2
"---------------------------------------
```

### 可能出现问题


#### 可能出现乱码

需要安装`Powerline`的相关字体：[https://github.com/powerline/fonts](https://github.com/powerline/fonts)

#### 在`Vim`中状态栏无法正确显示箭头

这因为是缺少对应字体，需要安装如下字体：
[https://github.com/vitahlin/consolas-powerline-vim ](https://github.com/vitahlin/consolas-powerline-vim )
在字体库中安装时，可能会出现警告提示，忽略，直接安装后重启`Vim`即可正确显示。




