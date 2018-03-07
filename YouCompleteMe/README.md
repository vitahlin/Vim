
## YouCompleteMe

Github：[https://github.com/Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

用于代码补全和提示，非常强大，支持C、C++、JavaScript、Python、Go等等。该插件需要`Python`支持。具体可参考Github上说明。

### 常用命令
```c
YcmRestartServer // 重启YCM服务
```

### 安装

直接使用`Bundle`安装即可。
```c
Plugin 'Valloric/YouCompleteMe'
```

### 编译

```c
cd ~/.vim/bundle/YouCompleteMe
./install.py
```
运行`./install.py`时可以添加在后面添加参数以添加对不同语言的支持。如：`./install.py --clang-completer --tern-completer`，同时添加对`C`和`JavaScript`的支持。

用命令`./install.py --clang-completer` 在macOS上编译时，当因为网络原因，`Downloading Clang 4.0.1`时进度过慢，或者失败，不能通过`proxychains4`来帮助下载，因为`proxychains4`可能会导致下载到错误的 Clang版本，可以通过如下办法：
到[Clang官网](http://releases.llvm.org/download.html)选择下载Pre-Built Binaries `Clang for Mac OS X`，把下载的文件拷贝到YCM插件目录`YouCompleteMe/third_party/ycmd/clang_archives`下面，然后执行如下命令，重新编译：
```c
./install.py --clang-completer --system-libclang
```

### 设置


#### 1. 添加对C项目的补全

编译时需要增加`--clang-completer`参数，如：
```c
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

并且需要下载`Command Line Tools`，可以使用如下命令下载：
```c
xcode-select --install
```
如果电脑中已经安装过`Command Line Tools`，会提示已经安装。

最后，还需要在C项目的根目录添加`.ycm_extra_conf.py`文件，可以在C项目根目录下运行如下命令直接下载我修改过的支持C项目的`.ycm_extra_conf.py`文件：
```c
wget --no-check-certificate https://raw.githubusercontent.com/vitahlin/Vim/master/YouCompleteMe/c/.ycm_extra_conf.py
```

##### 参考链接

- [https://github.com/Valloric/YouCompleteMe/issues/2339](https://github.com/Valloric/YouCompleteMe/issues/2339)

**注：`.ycm_extra_conf.py`文件最好不要格式化**

#### 2. 添加对C++项目的补全

编译和安装`Command Line Tools`和对C项目的配置一样，但是`.ycm_extra_conf.py`文件有所不同。

需要在C++项目的根目录添加`.ycm_extra_conf.py`文件，可以在C++项目根目录下运行如下命令直接下载我修改过的支持C++项目的`.ycm_extra_conf.py`文件：
```c
wget --no-check-certificate https://raw.githubusercontent.com/vitahlin/Vim/master/YouCompleteMe/cpp/.ycm_extra_conf.py
```

**注：`.ycm_extra_conf.py`文件不要格式化**

#### 3. 添加对Node.js项目的补全

编译时需要添加`--tern-completer`参数以添加对`javascript`的支持。
还需要在项目的跟目录添加`.tern-project`文件，可以在Node.js项目根目录运行如下命令直接下载我提供的`.tern-project`文件：
```c
wget --no-check-certificate https://raw.githubusercontent.com/vitahlin/Vim/master/YouCompleteMe/js/.tern-project
```
此外还需要`tags`文件，使用如下命令用ctags生成tags文件：
```c
ctags -R app/ --javascript-kinds=+f+m+p+v --fields=+l --extra=+q
```
Node.js项目中目录很多，比如说模块目录`node_modules`就不需要生成tags文件，所以这里设置`app/`为指定要生成tags的目录，不设置指定目录的话，则默认对全部目录生成。
设置`.vimrc`文件，增加对`tags`文件的读取
```c
let g:ycm_collect_identifiers_from_tags_files=1 
```

##### 参考链接

- [https://github.com/Valloric/YouCompleteMe/issues/2315](https://github.com/Valloric/YouCompleteMe/issues/2315)


#### 4. 不弹出Scratch窗口

在`.vimrc`文件中增加设置：
```c
set completeopt-=preview
```

##### 参考链接

- [http://stackoverflow.com/questions/15962421/how-can-i-disable-scratch-preview-window](http://stackoverflow.com/questions/15962421/how-can-i-disable-scratch-preview-window)


### 在`.vimrc`的配置参考
更多的设置可参考Github项目页面。
```c 
" YouCompleteMe 代码自动补全
" -------------------------------------------
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1


"在注释输入中也能补全
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=1

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

" 设置默认的.ycm_extra_conf.py文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_cache_omnifunc=0
let g:ycm_server_keep_logfiles = 1

" 不弹出Scratch窗
set completeopt-=previe
" -------------------------------------------
```

### 可能出现问题


#### 1. 编译失败

出现编译失败时，一般是因为网络问题，重新编译即可。

#### 2. `ERROR: please install CMake and retry.`

运行`./install.py --clang-completer --tern-completer`时提示"`ERROR: please install CMake and retry.`"。

##### 解决
需要安装`CMake`:
```c 
brew install cmake
```

#### 3. 安装过慢
使用`PluginInstall`安装时，一直是`Processing…`, 再进入Vim提示`YouCompleteMe unavailable: No module named future`

##### 解决：

一直在`Processing……`这是因为文件过大，因为网络环境问题可能安装速度过慢，可以开启另外一个终端，查看`Vim`插件目录下的`YouCompleteMe`目录大小是否在缓慢增加。如果`Vundle`没有提示安装成功重新安装即可。

##### 参考链接
- [https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45](https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45)

#### 4. 出现`Read time out`提示
在进行补全提示时，有时候Vim会出现`Read time out`，具体内容：
```c
HTTPConnectionPool(host='localhost', port=37075): Read timed out. (read timeout=0.5)
```

##### 解决：

修改`YouCompleteMe`中的`TIMEOUT_SECONDS`变量：
```c
cd ~/.vim/bundle/YouCompleteMe/python/ycm/client
vi completion_request.py
```
`completion_request.py`文件第34行`TIMEOUT_SECONDS`原来的值为0.5,改为2，如果改为2仍然出现问题可以改成30。改完后需要重启Vim。

#### 5. 启动时提示`ycm_core library compiled for Python 2 but loaded in Python 3`

如果你使用`Homebrew`来安装`python`的话，最新的`brew install python`安装的是`python 3`。即，Homebrew默认的是 3 版本的 Python，而YCM编译需要的是 Python 2。

##### 解决

所以，需要在`.vimrc`文件中增加设置，手动设置 Python 路径为系统自带的 Python2。
```c
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
```


##### 参考链接 
- [https://github.com/Valloric/YouCompleteMe/issues/777](https://github.com/Valloric/YouCompleteMe/issues/777)
- [https://github.com/Valloric/YouCompleteMe/issues/2052](https://github.com/Valloric/YouCompleteMe/issues/2052)


