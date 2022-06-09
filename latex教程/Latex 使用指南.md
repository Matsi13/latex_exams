# Latex 使用指南

## 一、Latex的安装

### 1.Windows端

初学者只需要安装TeX Live即可。TeX Live自带的编辑器是Texworks，可以满足一般需求。不过我个人觉得Texworks的界面不够美观，所以一般是在vscode中写代码，再用Texworks打开代码文件，进行排版。  

### 2.mac端

我并没有在mac端安装过latex，不过我认为网上的[这篇教程](https://zhuanlan.zhihu.com/p/35498361)看起来很靠谱，它推荐安装BasicTex，再安装编辑器TexStudio。我将其改造到保姆级别，记录在本文档中。<br>

#### (1) BasicTex的安装

在[MacTex网站](https://tug.org/mactex/)上，点击Smaller Download，下载Basic Tex。之后一直按照提示安装即可。（我这里不是mac端，所以没有实际下载，如有问题，随时联系我）<br>

<img src="BasicTex安装.png" style="zoom:38%;" />

#### (2) TeXStudio的安装

进入[TexStudio官网](http://texstudio.sourceforge.net/)，检查Download now（红框部分）对应的的操作系统是否为Mac。（我这里默认的是Windows，可能是因为我的电脑是Windows，希望到你那里直接就是Mac）。<br>

<img src="TexStudio下载.png" style="zoom:38%;" />

如果不是，点击左侧的Download（绿框部分），转到不同版本的安装包。向下翻页找到Mac OS X对应的版本，下载第一个，也就是红框标明的那个。<br>

<img src="TexStudioMac.png" style="zoom:38%;" />

注意，如果电脑在打开TexStudio时报错，就按住ctrl键，点击TexStudio的图标，在弹出的菜单中选择打开或Open。（我没用过mac，不确定按住crtl键再点击鼠标是不是等价于windows中的右键点击）<br>

下载完成后，双击打开，运行安装程序。安装完成后，在所有程序中找到TexStudio，打开。<br>

#### (3)配置中文环境

配置中文环境分为两部分：①将软件的显示语言设为中文②允许你的论文中出现中文。在这里，我遇到了与教程不同的情况。如果你那里能按教程操作，就按教程；出现问题就按我的方法操作；再出现问题就直接联系我。

在主界面点击Options -> Configure TexStudio<br>

<img src="中文环境配置1.png" style="zoom:38%;" />

先点击左侧的General，然后在Language中选择zh_CN（Chinese）。这是将软件的显示语言改为中文。这一步如果失败，问题不大，可以跳过。<br>

<img src="中文环境配置2.png" style="zoom:38%;" />

点击左侧的“构建”或“Build”，将默认编译器改为XeLaTex。

<img src="中文环境配置3.png" style="zoom:38%;" />

# 二、Latex的入门教程

推荐使用[一份其实很短的 LaTeX 入门文档](https://liam.page/2014/09/08/latex-introduction/)，可以在短时间内理解latex最为重要的功能。文档之后的部分都是一些零碎的知识点，在网上都可以查到，放在这里只是为了方便使用。

# 三、宏包及其用途



# 四、排版指令

## 1.文档

```latex
\documentclass{article}                                  % 指定文档类型为“文章”
\documentclass[UTF8]{ctexart}                            % 支持中英混排的文章类型
\setCJKmainfont{SimSun}                                  % 设定主字体为宋体
\begin{document}                                         % 开始文档
\end{document}                                           % 结束文档
```

## 2.标题

```latex
\title{}                                                 % 设定标题内容
\author{}                                                % 设定作者名
\date{\today}                                            % 设定日期为今天
\maketitle                                               % 在该位置生成标题、作者名、日期
```

## 3.节、副节、段、副段

```latex
\section{}                                               % 开始新的一节，自动编号
\section*{}                                              % 开始新的一节，无编号
\CTEXsetup[format+={\raggedright}]{section}              % 要求每一节靠右对齐
\titlespacing*{\section}                                 % 设定关于节的缩进值，三个参数依次为节的
                                                         % 标题左右的留白、标题之间的距离、标题与文字间的距离
{0pt}{0pt}{0pt}                                          % 注意，带*号的版本会禁止标题后的段落缩进 
\titleformat*{\section}{\normalsize}                     % 设定节标题的大小，此处设为正常文字的大小
```

subsection、paragraph、subparagraph同理。

# 五、数学符号

标成蓝色的是只能在文本格式中生成的特殊符号，我会用语言描述其输出结果，或者用数学格式下的其他代码冒充其输出结果。

## 1.数学符号

| 代码                               | 输出                       | 代码        | 输出        | 代码      | 输出      | 代码                          | 输出       | 代码                                 | 输出        |
| ---------------------------------- | -------------------------- | ----------- | ----------- | --------- | --------- | ----------------------------- | ---------- | ------------------------------------ | ----------- |
| `\alpha`                           | $\alpha$                   | `\beta`     | $\beta$     | `\gamma`  | $\gamma$  | `\delta`                      | $\delta$   | `\epsilon`                           | $\epsilon$  |
| `\varepsilon`                      | $\varepsilon$              | `\zeta`     | $\zeta$     | `\eta`    | $\eta$    | `\theta`                      | $\theta$   | `\vartheta`                          | $\vartheta$ |
| `\iota`                            | $\iota$                    | `\kappa`    | $\kappa$    | `\lambda` | $\lambda$ | `\mu`                         | $\mu$      | `\nu`                                | $\nu$       |
| `\xi`                              | $\xi$                      | `\pi`       | $\pi$       | `\varpi`  | $\varpi$  | `\rho`                        | $\rho$     | `\varrho`                            | $\varrho$   |
| `\sigma`                           | $\sigma$                   | `\varsigma` | $\varsigma$ | `\tau`    | $\tau$    | `\upsilon`                    | $\upsilon$ | `\phi`                               | $\phi$      |
| `\varphi`                          | $\varphi$                  | `\chi`      | $\chi$      | `\psi`    | $\psi$    | `\omega`                      | $\omega$   | `\Gamma`                             | $\Gamma$    |
| `\Delta`                           | $\Delta$                   | `\Theta`    | $\Theta$    | `\Lambda` | $\Lambda$ | `\Xi`                         | $\Xi$      | `\Pi`                                | $\Pi$       |
| `\Sigma`                           | $\Sigma$                   | `\Upsilon`  | $\Upsilon$  | `\Phi`    | $\Phi$    | `\Psi`                        | $\Psi$     | `\Omega`                             | $\Omega$    |
| `\infty`                           | $\infty$                   | `\dagger`   | $\dagger$   | `\quad`   | $\quad$   | <font color=Blue>`\AA`</font> | $\AA$      | <font color=Blue>`\ding{172}`</font> | ①           |
| <font color=Blue>\ding{182}</font> | <font color=White>①</font> |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |
|                                    |                            |             |             |           |           |                               |            |                                      |             |



## 2.运算符

| 代码         | 输出         | 代码             | 输出          | 代码           | 输出         | 代码         | 输出         | 代码          | 输出          |
| ------------ | ------------ | ---------------- | ------------- | -------------- | ------------ | ------------ | ------------ | ------------- | ------------- |
| `\times`     | $\times$     | `\div`           | $\div$        | `\pm`          | $\pm$        | `\cdot`      | $\cdot$      | `\cap`        | $\cap$        |
| `\cup`       | $\cup$       | `\geq`           | $\geq$        | `\leq`         | $\leq$       | `\neq`       | $\neq$       | `\approx`     | $\approx$     |
| `\equiv`     | $\equiv$     | `\dots`          | $\dots$       | `\cdots`       | $\cdots$     | `\vdots`     | $\vdots$     | `\ddots`      | $\ddots$      |
| `\in`        | $\in$        | `\subseteq`      | $\subseteq$   | `\subseteqq`   | $\subseteqq$ | `\subset`    | $\subset$    | `\supset`     | $\supset$     |
| `\notin`     | $\notin$     | `\supseteq`      | $\supseteq$   | `\supseteqq`   | $\supseteqq$ | `\subsetneq` | $\subsetneq$ | `\subsetneqq` | $\subsetneqq$ |
| `\supsetneq` | $\supsetneq$ | `\supsetneqq`    | $\supsetneqq$ | `\ll`          | $\ll$        | `\gg`        | $\gg$        | `\because`    | $\because$    |
| `\therefore` | $\therefore$ | `\downtherefore` | $\because$    | `\uptherefore` | $\therefore$ | `\nabla`     | $\nabla$     | `\sim`        | $\sim$        |
| `\coloneqq`  | $\coloneqq$  | `\exists`        | $\exists$     | `\forall`      | $\forall$    | `\ast`       | $\ast$       | `\oplus`      | $\oplus$      |
| `\iff`       | $\iff$       | `\int`           | $\int$        | `\iint`        | $\iint$      | `\iiint`     | $\iiint$     | `\idotsint`   | $\idotsint$   |
| `\to`        | $\to$        | `\langle`        | $\langle$     | `\rangle`      | $\rangle$    | `\lvert`     | $\lvert$     | `\rvert`      | $\rvert$      |
| `\lVert`     | $\lVert$     | `\rVert`         | $\rVert$      | `\lceil`       | $\lceil$     | `\rceil`     | $\rceil$     | `\lfloor`     | $\lfloor$     |
| `\rfloor`    | $\rfloor$    | `\prec`          | $\prec$       | `\succ`        | $\succ$      |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |
|              |              |                  |               |                |              |              |              |               |               |

## 3.表达式

| 格式                                   | 代码示例                                       | 输出示例                                       |
| -------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `\sqrt[]{}`                            | `\sqrt[6][3]`                                  | $\sqrt[6]{3}$                                  |
| `\sqrt{}`                              | `\sqrt{3}`                                     | $\sqrt{3}$                                     |
| `\frac{}{}`                            | `\frac{1}{2}`                                  | $\frac{1}{2}$                                  |
| `\sum_{}^{} `                          | `\sum_{i=1}^{n}i`                              | $\sum_{i=1}^{n}i$                              |
| `\prod_{}^{}`                          | `\prod_{i=1}^{n}i`                             | $\prod_{i=1}^{n}i$                             |
| `\sum\limits _{}^{}`                   | `\sum\limits _{i=1}^{n}i`                      | $\sum\limits _{i=1}^{n}i$                      |
| `\prod\limits _{}^{}`                  | `\prod\limits _{i=1}^{n}i`                     | $\prod\limits _{i=1}^{n}i$                     |
| `\lim_{}`                              | `\lim_{x\to0}x`                                | $\lim\limits_{x\to0}x$                         |
| `\lim\nolimits _{}`                    | `\lim\nolimits _{x\to0}x`                      | $\lim\nolimits _{x\to0}x$                      |
| `\int_{}^{}`                           | `\int_a^b x^2 dx`                              | $\int_a^b x^2 dx$                              |
| `\tbinom{}{}`                          | `\tbinom{n}{m}`                                | $\tbinom{n}{m}$                                |
| `\mathop{}\limits_{}`                  | `\mathop{min}\limits_{a}`                      | $\mathop{min}\limits_{a}$                      |
| `\mathbb{}`                            | `\mathbb{R}`                                   | $\mathbb{R}$                                   |
| `\mathring{}`                          | `\mathring{A}`                                 | $\mathring{A}$                                 |
| `\bm{}`                                | `\bm{i}`                                       | $\bf{i}$                                       |
| `{\bfseries }`                         | `{\bfseries i}`                                | ${\bf i}$                                      |
| `\big`                                 | `\big\lvert`                                   | $\big\lvert$                                   |
| `\bigg`                                | `\bigg\lvert`                                  | $\bigg\lvert$                                  |
| `\begin{bmatrix}\end{bmatrix}`         | `\begin{bmatrix}1&2\\3&4\end{bmatrix}`         | $$\begin{bmatrix}1&2\\3&4\end{bmatrix}$$       |
| `\begin{vmatrix}\end{vmatrix}`         | `\begin{vmatrix}1&2\\3&4\end{vmatrix}`         | $$\begin{vmatrix}1&2\\3&4\end{vmatrix}$$       |
| `\begin{pmatrix}\end{pmatrix}`         | `\begin{pmatrix}1&2\\3&4\end{pmatrix}`         | $$\begin{pmatrix}1&2\\3&4\end{pmatrix}$$       |
| `\begin{Bmatrix}\end{Bmatrix}`         | `\begin{Bmatrix}1&2\\3&4\end{Bmatrix}`         | $$\begin{Bmatrix}1&2\\3&4\end{Bmatrix}$$       |
| `\begin{Vmatrix}\end{Vmatrix}`         | `\begin{Vmatrix}1&2\\3&4\end{Vmatrix}`         | $$\begin{Vmatrix}1&2\\3&4\end{Vmatrix}$$       |
| `\begin{smallmatrix}\end{smallmatrix}` | `\begin{smallmatrix}1&2\\3&4\end{smallmatrix}` | $\begin{smallmatrix}1&2\\3&4\end{smallmatrix}$ |
| `\begin{cases}{}\\{}\end{cases}`       | `\begin{cases}1,y>0\\0,y<0\end{cases}`         | $\begin{cases}1,y>0\\0,y<0\end{cases}$         |
| `\ddot{}`                              | `\ddot{\mu}`                                   | $\ddot{\mu}$                                   |
| `\dot{}`                               | `\dot{\mu}`                                    | $\dot{\mu}$                                    |
|                                        |                                                |                                                |



# 六、表格

```latex
\begin{tabular}{|l|l|}                      % 指定表格的两列都是靠左对齐
\hline                                      % 画一条横线  
\diagbox{Y}{X} & 0\\                        % 用对角线把格子划分成两部分
\hline                                      
1 & 2 \\                                    % 不同列之间用&分隔
\hline
3 & 4 \\
\hline
\end{tabular}
```





# 七、图片

## 1.文字环绕图片

```latex
\begin{wrapfigure}{r}{3cm}                                % 图片在右侧，高度3cm
\includegraphics[width=3cm]{2020-1.png}                   % 图片宽度3cm，导入路径为2020-1.png
\caption*{1}                                              % 图片标题为1，*是为了禁用自动编号
\end{wrapfigure}                                          % 结束wrapfigure环境
```

## 2.独立图片

```latex
\begin{figure}[H]                                         % 将图片至于当前位置。更多参数可自行查询
\centering                                                % 图片居中
\includegraphics[width=4cm,height=4cm]{2020-6.jpg}        % 长4cm，高4cm，导入路径2020-6.jpg
\caption{}                                                % 自动生成标题编号                                        
\end{figure}                                              % 结束figure环境
```

# 八、其他

## 1.字体的变化

```latex
\bm{需要加粗的部分}
{\bfseries 需要加粗的部分}
{\color{red/blue/green/black/white/cyan/magenta/yellow} 文字}
\uline{下划线文字，可以自动换行}

```

