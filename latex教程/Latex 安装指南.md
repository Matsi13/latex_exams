# Latex 使用指南

## 一、Latex的安装

### 1.Windows端

初学者只需要安装TeX Live即可。TeX Live自带的编辑器是Texworks，可以满足一般需求。不过我个人觉得Texworks的界面不够美观，所以一般是在vscode中写代码，再用Texworks打开代码文件，进行排版。  

### 2.mac端

我并没有在mac端安装过latex，不过我认为网上的[这篇教程](https://zhuanlan.zhihu.com/p/35498361)看起来很靠谱，它推荐安装BasicTex，再安装编辑器TexStudio。我将其改造到保姆级别，记录在本文档中。<br>

#### (1) BasicTex的安装

在[MacTex网站](https://tug.org/mactex/)上，点击Smaller Download，下载Basic Tex。之后一直按照提示安装即可。（我这里不是mac端，所以没有实际下载，如有问题，随时联系我）<br>

<img src="D:/latex/latex教程/BasicTex安装.png" style="zoom:38%;" />

#### (2) TeXStudio的安装

进入[TexStudio官网](http://texstudio.sourceforge.net/)，检查Download now（红框部分）对应的的操作系统是否为Mac。（我这里默认的是Windows，可能是因为我的电脑是Windows，希望到你那里直接就是Mac）。<br>

<img src="D:/latex/latex教程/TexStudio下载.png" style="zoom:38%;" />

如果不是，点击左侧的Download（绿框部分），转到不同版本的安装包。向下翻页找到Mac OS X对应的版本，下载第一个，也就是红框标明的那个。<br>

<img src="D:/latex/latex教程/TexStudioMac.png" style="zoom:38%;" />

注意，如果电脑在打开TexStudio时报错，就按住ctrl键，点击TexStudio的图标，在弹出的菜单中选择打开或Open。（我没用过mac，不确定按住crtl键再点击鼠标是不是等价于windows中的右键点击）<br>

下载完成后，双击打开，运行安装程序。安装完成后，在所有程序中找到TexStudio，打开。<br>

#### (3)配置中文环境

配置中文环境分为两部分：①将软件的显示语言设为中文②允许你的论文中出现中文。在这里，我遇到了与教程不同的情况。如果你那里能按教程操作，就按教程；出现问题就按我的方法操作；再出现问题就直接联系我。

在主界面点击Options -> Configure TexStudio<br>

<img src="D:/latex/latex教程/中文环境配置1.png" style="zoom:38%;" />

先点击左侧的General，然后在Language中选择zh_CN（Chinese）。这是将软件的显示语言改为中文。这一步如果失败，问题不大，可以跳过。<br>

<img src="D:/latex/latex教程/中文环境配置2.png" style="zoom:38%;" />

点击左侧的“构建”或“Build”，将默认编译器改为XeLaTex。

<img src="D:/latex/latex教程/中文环境配置3.png" style="zoom:38%;" />