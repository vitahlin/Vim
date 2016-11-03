## minibufexpl

Github:[https://github.com/fholgado/minibufexpl.vim](https://github.com/fholgado/minibufexpl.vim)

使`Vim`支持多文件编辑。

### 安装

```c 
Plugin 'fholgado/minibufexpl.vim'
```

### 设置

在`.vimrc`中增加设置：

```c 
" minibufexpl 多文件编辑
"------------------------------------------------------------------------------------

"按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapWindowNavVim = 1   

"按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapWindowNavArrows = 1 

"启用以下两个功能：Ctrl+tab移到下一个窗口
"let g:miniBufExplMapCTabSwitchBufs = 1 

"不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffe
let g:miniBufExplModSelTarget=1  
"-----------------------------------------------------------------------------------
```