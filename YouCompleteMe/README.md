
## YouCompleteMe
用于代码补全和提示，非常强大，支持C、C++、JavaScript、Python、Go等等。该插件需要`Python`支持。具体可参考Github上说明。
Github：[https://github.com/Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

### 1. 安装
直接使用`Bundle`安装即可。
```c
Bundle 'Valloric/YouCompleteMe'
```
#### 安装过慢
使用`BundleInstall`安装时，一直是`Processing…`, 再进入Vim提示`YouCompleteMe unavailable: No module named future`

##### 解决：

一直在`Processing……`这是因为文件过大，安装速度过慢，可以开启另外一个终端，查看`Vim`插件目录下的`YouCompleteMe`目录大小是否在缓慢增加。如果`Bundle`没有提示安装成功重新安装即可。

###### 参考链接

- [https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45](https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45)

### 2. 编译

```c
cd ~/.vim/bundle/YouCompleteMe
./install.py
```
运行`./install.py`时可以添加在后面添加参数以添加对不同语言的支持。

#### 编译失败
出现编译失败的情况重新编译即可。


### 3. 添加对C项目的补全
编译时需要改为运行如下命令：
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

###### 参考链接

- [https://github.com/Valloric/YouCompleteMe/issues/2339](https://github.com/Valloric/YouCompleteMe/issues/2339)

**注：`.ycm_extra_conf.py`文件最好不要格式化**

### 4. 添加对C++项目的补全
编译和安装`Command Line Tools`和对C项目的配置一样，但是`.ycm_extra_conf.py`文件有所不同。
编译时需要改为运行如下命令：
```c
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
并且需要下载`Command Line Tools`，可以使用如下命令下载：
```c
xcode-select --install
```
如果电脑中已经安装过`Command Line Tools`，会提示已经安装。
最后，还需要在C++项目的根目录添加`.ycm_extra_conf.py`文件，可以在C++项目根目录下运行如下命令直接下载我修改过的支持C++项目的`.ycm_extra_conf.py`文件：
```c
wget --no-check-certificate https://raw.githubusercontent.com/vitahlin/Vim/master/YouCompleteMe/cpp/.ycm_extra_conf.py
```

**注：`.ycm_extra_conf.py`文件最好不要格式化**

### 5. 添加对Node.js项目的补全
编译时需要改为运行如下命令：
```c
cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer
```
安装时添加`--tern-complete`是添加对JavaScript的支持（注：如果YCM需要同时支持C和Node.js，使用如下命令：`./install.py --clang-completer --tern-completer`）。
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

###### 参考链接

- [https://github.com/Valloric/YouCompleteMe/issues/2315](https://github.com/Valloric/YouCompleteMe/issues/2315)

### 6. 出现`Read time out`提示
提示内容：
```c
HTTPConnectionPool(host='localhost', port=37075): Read timed out. (read timeout=0.5)
```

##### 解决：

修改`YouCompleteMe`中的`TIMEOUT_SECONDS`变量：
```c
cd ~/.vim/bundle/YouCompleteMe/python/ycm/client
vi completion_request.py
```
修改`TIMEOUT_SECONDS`改为2，如果改为2仍然出现问题可以改成30。

###### 参考链接
 
- [https://github.com/Valloric/YouCompleteMe/issues/777](https://github.com/Valloric/YouCompleteMe/issues/777)

### 7. 不弹出Scratch窗口
在`.vimrc`文件中增加设置：
```c
set completeopt-=preview
```

###### 参考链接

- [http://stackoverflow.com/questions/15962421/how-can-i-disable-scratch-preview-window](http://stackoverflow.com/questions/15962421/how-can-i-disable-scratch-preview-window)




