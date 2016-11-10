## vim-rooter

Github:[https://github.com/airblade/vim-rooter](https://github.com/airblade/vim-rooter)

自动切换`Vim`工作路径

### 安装
```c 
Plugin 'airblade/vim-rooter'
```

### 设置
在`.vimrc`中添加设置：
```c 
" vim-rooter 自动切换Vim工作路径
"--------------------------------------------
"  定义识别项目路径的文件
let g:rooter_patterns = ['tags', '.git/']
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1
"--------------------------------------------
```