%%% csoarticle.cls
%%% document class for www.paper.edu.cn
%%% author: WANG Yong-Xian (yxwang@nudt.edu.cn)
%%% 

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{csoarticle}
  [2010/09/27 v0.02 csoarticle
   document class]

% encoding
\newif\ifCSO@GBK \CSO@GBKfalse
\DeclareOption{GBK}{\CSO@GBKtrue\PassOptionsToClass{\CurrentOption}{ctexart}}
\DeclareOption{UTF8}{\CSO@GBKfalse\PassOptionsToClass{\CurrentOption}{ctexart}}
\DeclareOption{gbk}{\CSO@GBKtrue\PassOptionsToClass{\CurrentOption}{ctexart}}
\DeclareOption{utf8}{\CSO@GBKfalse\PassOptionsToClass{\CurrentOption}{ctexart}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ExecuteOptions{winfonts,fancyhdr,hyperref}
\ProcessOptions
\LoadClass{ctexart}

\RequirePackage[hmargin=31.7mm,vmargin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}                               % 自动设置表格的列宽
\RequirePackage{subfig}
\RequirePackage{amsmath,amssymb,amsthm}
%\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}    % 定理类环境宏包，其中 amsmath 选项用来兼容 AMS LaTeX 的宏包
\RequirePackage{cases}      % 括号宏包
\RequirePackage{paralist}   % 列表宏包
\RequirePackage{mdwlist}    % 提供suspend 暂停列表功能的宏包
\RequirePackage[xetex, unicode,
    pdfstartview=FitH,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    colorlinks=true,
    citecolor=black,
    linkcolor=black,
    anchorcolor=black,
    urlcolor=black,
    breaklinks=true]{hyperref}
\RequirePackage[super]{cite}            % 更改引用文献格式为上标中括号
\RequirePackage{multirow,bigstrut}      % 使用Multirow宏包，使得表格可以合并多个row格
\RequirePackage{booktabs}               % 表格，横的粗线；\specialrule{1pt}{0pt}{0pt}
\RequirePackage{supertabular}           % 超表格环境
\RequirePackage{caption}
\RequirePackage{rotating}               % 旋转图表
\RequirePackage{floatrow}
\floatsetup[table]{style=Plaintop}
%\RequirePackage{tikz}
%\RequirePackage{rotfloat}
\RequirePackage[all,pdf]{xy}
\RequirePackage{listings} %插入代码
\RequirePackage[dvipsnames]{xcolor} %代码高亮

%% 代码高亮设置
\lstset{numbers=left, %设置行号位置
        numberstyle=\tiny, %设置行号大小
        keywordstyle=\color{blue}, %设置关键字颜色
        commentstyle=\color[cmyk]{1,0,1,0}, %设置注释颜色
        frame=single, %设置边框格式
        escapeinside=``, %逃逸字符，用于显示中文
        breaklines, %自动折行
        extendedchars=false,
        xleftmargin=2em,xrightmargin=2em, aboveskip=1em, %设置边距
        tabsize=4, %设置tab空格数
        showspaces=false %不显示空格
       }
       
%支持算法环境
%\RequirePackage[boxed,ruled,lined]{algorithm2e}
%\RequirePackage{algorithmic}

\renewcommand\citeform[1]{[#1]}
%\renewcommand\citeleft{}
%\renewcommand\citeright{}
\newcommand\affil[1]{\textsuperscript{#1}}

\newcommand\cso@titleCHN\relax
\newcommand\cso@titleENG\relax
\newcommand\cso@authorCHN\relax
\newcommand\cso@authorENG\relax
\newcommand\cso@affiliationCHN\relax
\newcommand\cso@affiliationENG\relax
\newcommand\cso@cateidCHN\relax
\newcommand\cso@abstractCHN\relax
\newcommand\cso@abstractENG\relax
\newcommand\cso@keywordCHN\relax
\newcommand\cso@keywordENG\relax
\newcommand\cso@authorIntroduction\relax
\newcommand\cso@fund\relax

\newcommand\titleCHN[1]{\renewcommand\cso@titleCHN{#1}}
\newcommand\titleENG[1]{\renewcommand\cso@titleENG{#1}}
\newcommand\authorCHN[1]{\renewcommand\cso@authorCHN{#1}}
\newcommand\authorENG[1]{\renewcommand\cso@authorENG{#1}}
\newcommand\affiliationCHN[1]{\renewcommand\cso@affiliationCHN{#1}}
\newcommand\affiliationENG[1]{\renewcommand\cso@affiliationENG{#1}}
\newcommand\abstractCHN[1]{\renewcommand\cso@abstractCHN{#1}}
\newcommand\abstractENG[1]{\renewcommand\cso@abstractENG{#1}}
\newcommand\keywordCHN[1]{\renewcommand\cso@keywordCHN{#1}}
\newcommand\keywordENG[1]{\renewcommand\cso@keywordENG{#1}}
\newcommand\cateidCHN[1]{\renewcommand\cso@cateidCHN{#1}}
\newcommand\authorIntroduction[1]{\renewcommand\cso@authorIntroduction{#1}}
\newcommand\fund[1]{\renewcommand\cso@fund{#1}}

\AtEndOfPackage{\makeatletter\input{../templates/cso-utf8.def}\makeatother}


\AtBeginDocument{\setcounter{footnote}{0}%
				 \setcounter{section}{-1}}
\AtEndDocument{\clearpage}

\newcommand{\figref}[1]{图~\ref{#1}~}      % 定义图片引用
\newcommand{\tabref}[1]{表~\ref{#1}~}      % 定义表格引用
\renewcommand{\eqref}[1]{式~(\ref{#1})}  % 定义公式引用
%%% 定义页眉页脚
%\newsavebox{\csologo}
%\sbox{\csologo}{\includegraphics{csologo}}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
%\fancyhead{}
%\fancyhead[L]{\raisebox{-1.2mm}{\resizebox{45mm}{!}{\usebox{\csologo}}}}
%\fancyhead[R]{\zihao{-5}\rm http://www.paper.edu.cn}
%\fancyfoot{}
\fancyfoot[C]{-\ {\thepage}\ -}

%%% 定义上标形式的文献引用
%\renewcommand{\cite}[1]{\textsuperscript{\cite{#1}}}


%%% 定义1级标题
\CTEXsetup[format={\bfseries\heiti\zihao{-4}}]{section}
%%% 定义2级标题
\CTEXsetup[format={\heiti\zihao{5}}]{subsection}
%%% 定义3级标题
\CTEXsetup[format={\kaishu}]{subsubsection}
%%% 设置列表环境的距离
\setlength{\parsep}{0cm}

%%% 设置图表标题上下空白
\setlength{\abovecaptionskip}{5pt plus 5pt minus 0pt}% 
\setlength{\belowcaptionskip}{5pt plus 5pt minus 0pt}% 
\bibliographystyle{../templates/GBT7714-2005NLang-ZJU}

\endinput
