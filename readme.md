# Work anywhere on ubuntu
因为经常重装电脑，工作环境重新搭建比较频繁，因此用命令简化。
这里收录了我经常用到的软件，有：

|名称                      | 描述                               |
|--------------------------|------------------------------------|
|basictools - tofrodos     |转换DOS和UNIX换行工具|
|basictools - ack-grep     |专门为扫描程序文件做了优化的grep|
|basictools - proxychains  |非常好用的命令行翻墙工具|
|basictools - nautilus-open-terminal    |在目录中直接打开当前目录的终端|
|basictools - clipit       |剪贴板记录|
|basictools - gimp         |图片编辑软件|
|basictools - most         |比more更好用的分页工具|
|basictools - autossh      |用于自动连接SSH，主要是不间断代理|
|basictools - subversion   |版本控制工具|
|basictools - unrar        |使系统自带的解压工具支持rar格式|
|chrome|
|dict                      |在命令行下调用有道翻译|
|dropbox|
|git                       |git的程序和一些配置|
|meld                      |非常好用的diff工具|
|pidgin                    |聊天客户端|
|ruby                      |编译安装最新版本的ruby|
|sqlite|
|synergy                   |一套键盘鼠标控制多台电脑|
|vim                       |我常用的vim配置、插件、配色|
|xmind                     |思维导图软件（这个软件目前还不能安装）|

以及一些配置

|名称                      | 描述                               |
|--------------------------|------------------------------------|
|bash                      |bash、teminal相关的配置|
|hosts                     |常用的host绑定|
|proxy                     |proxy命令开启代理服务器|
|ssh                       |ssh key添加|
|terminal                  |终端字体等配置|
|vpn                       |ArrayVPN的ubuntu客户端脚本|
|window                    |将窗口的关闭等按钮移到右上角|

## 安装方法

1. 下载

        git clone https://qhwa@github.com/qhwa/Work-Anywhere-On-Ubuntu.git work-anywhere
        cd work-anywhere

2. 安装全部

        ./install #安装全部

    或安装指定的软件/配置

        ./softwares/<软件名称>/install-<软件名称>    #提示：多用tab哦
        ./enviroments/<配置名称>/config-<配置名称>

