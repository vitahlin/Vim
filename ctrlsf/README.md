## ctrlsf

GitHub：[https://github.com/dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)

帮助在项目内进行全局搜索。

### 安装

```c
Plugin 'dyng/ctrlsf.vim'
```

### 设置

在`.vimrc`文件中增加设置：

```c
" ctrlsf 项目内全局搜索
"-----------------------------------------------------
nmap <C-S><C-F> :CtrlSF  " 设置为快捷键Ctrl+s Ctrl+f 
nmap <C-S>o :CtrlSFOpen<CR>
nmap ss :CtrlSF <C-R><C-W><CR>
vnoremap ss y:CtrlSF <C-R>"<CR>
let g:ctrlsf_default_root = 'project'
"-----------------------------------------------------
```