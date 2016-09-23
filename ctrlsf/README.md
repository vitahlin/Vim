## ctrlsf

帮助在项目内进行全局搜索。

GitHub：[https://github.com/dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)

#### 在`.vimrc`中的设置

```c
" 全局搜索
nmap <C-S><C-F> :CtrlSF 
nmap <C-S>o :CtrlSFOpen<CR>
nmap ss :CtrlSF <C-R><C-W><CR>
vnoremap ss y:CtrlSF <C-R>"<CR>
let g:ctrlsf_default_root = 'project'
```

### 安装
```c
Bundle 'dyng/ctrlsf.vim'
```

### 具体设置
- `nmap <C-S><C-F> :CtrlSF`将快捷键设为`Ctrl+s Ctrl+f`

