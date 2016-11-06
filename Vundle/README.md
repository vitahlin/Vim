## Vundle

GitHub：[https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)

Vim中用来管理插件的插件，实现插件的快速安装、卸载等。


### 安装

在终端执行命令

```c
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

`git clone`完成后需要在`.vimrc`中增加配置：

```c
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 在这里填写需要安装的插件

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
```

然后在对应位置写上要安装的插件，如：

```c
Plugin 'Lokaltog/vim-powerline'
```

保存`.vimrc`文件后重启`Vim`，输入命令`PluginInstall`即可开始安装。
并且安装的插件都在`~/.vim/bundle`目录下。

### 可能出现问题

#### 安装其它插件失败

在国内，因为网络状况安装插件时可能出现失败情况。我们可以用一个取巧的方法。
这里以安装插件`vim-powerline`为例,可以直接在`~/.vim/bundle`目录下clone这个项目

```c
cd ~/.vim/bundle
git clone --recursive git@github.com:Lokaltog/vim-powerline.git
```

`clone`完成后再在`.vimrc`文件中添加设置：

```c
Plugin 'Lokaltog/vim-powerline'
```

保存后，在Vim中执行`PluginInstall`就会提示完成了。

### `Vundle`常用命令

```c
PluginInstall // 安装插件
PluginClean   // 卸载插件
PluginList    // 显示已经安装的插件
```