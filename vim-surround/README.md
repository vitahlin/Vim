## vim-surround

Github:[https://github.com/tpope/vim-surround](https://github.com/tpope/vim-surround)

在写代码时经常会遇到配对的符号，比如 {} [] () '' "" <> 等，尤其是标记类语言，比如html, xml，它们完全依赖这种语法。现代的各种编辑器一般都可以在输入一半符号的时候帮你自动补全另外一半。可有的时候你想修改、删除或者是增加一个块的配对符号时，它们就无能为力了。
`vim-surround`就是一个专门用来处理这种配对符号的插件，它可以非常高效快速的修改、删除及增加一个配对符号。

### 安装

```c
Plugin 'tpope/vim-surround'
```

### 使用说明

`--help`部分快捷键如下：

```c
Normal mode
 ds  - delete a surrounding
 cs  - change a surrounding
 ys  - add a surrounding
 yS  - add a surrounding and place the surrounded text on a new line + indent it
 yss - add a surrounding to the whole line
 ySs - add a surrounding to the whole line, place it on a new line + indent it
 ySS - same as ySs
    
 Visual mode
 s   - in visual mode, add a surrounding
 S   - in visual mode, add a surrounding but place text on new line + indent it
    
 Insert mode
 <CTRL-s> - in insert mode, add a surrounding
 <CTRL-s><CTRL-s> - in insert mode, add a new line + surrounding + indent
 <CTRL-g>s - same as <CTRL-s>
 <CTRL-g>S - same as <CTRL-s><CTRL-s>
```