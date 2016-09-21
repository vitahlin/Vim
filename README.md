# Vim相关插件和配置
**注：以下插件和配置在Mac平台MacVim测试通过。**

Vim的基本设置可以参考`.vimrc`文件。下面只介绍相关插件，以下插件都用`Bundle`安装。

### YouCompleteMe
用于代码补全和提示，非常强大，支持C、C++、JavaScript、Python、Go等等。该插件需要`Python`支持。具体可参考Github上说明。
Github：[https://github.com/Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

#### 1. 安装
直接使用`Bundle`安装即可。
##### 安装过慢
使用`BundleInstall`安装时，一直是`Processing…`, 再进入Vim提示`YouCompleteMe unavailable: No module named future`

**解决：**

一直在`Processing……`这是因为文件过大，安装速度过慢，可以开启另外一个终端，查看`Vim`插件目录下的`YouCompleteMe`目录大小是否在缓慢增加。如果`Bundle`没有提示安装成功重新安装即可。

**参考链接：**

- [https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45](https://github.com/yangyangwithgnu/use_vim_as_ide/issues/45)

#### 2. 编译

```c
cd ~/.vim/bundle/YouCompleteMe
./install.py
```
运行`./install.py`时可以添加在后面添加参数以添加对不同语言的支持。

##### 编译失败
出现编译失败的情况重新编译即可。


#### 3. 添加对C项目的支持
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

**参考链接**

- [https://github.com/Valloric/YouCompleteMe/issues/2339](https://github.com/Valloric/YouCompleteMe/issues/2339)



