# Vim相关插件和配置
**注：以下插件和配置在Mac平台MacVim测试通过。**

Vim的基本设置可以参考`.vimrc`文件。下面只介绍相关插件，以下插件都用`Bundle`安装。

### YouCompleteMe
用于代码补全和提示，非常强大，支持C、C++、JavaScript、Python、Go等等。该插件需要`Python`支持。具体可参考Github上说明。
Github：[https://github.com/Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### vim-powerline
状态栏美化插件。
Github：[https://github.com/Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)
#### 安装
直接用`Bundle`安装即可。
```c
Bundle 'Lokaltog/vim-powerline'
```
#### 配置
将以下配置加到`.vimrc`文件中。
```c
let g:Powerline_symbols = 'fancy'
set laststatus=2
```




