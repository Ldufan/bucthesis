%---------------------------------------------------------------------------%
%-                                                                         -%
%-                           Document Class                                -%
%-                                                                         -%
%---------------------------------------------------------------------------%

%---------------------------------------------------------------------------%
%->> Identification;标识节
%---------------------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bucthesis}[2020/05/10 v0.0 Bucthesis Template for Undergraduate]

%---------------------------------------------------------------------------%
%->> Declare options
%---------------------------------------------------------------------------%

\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{ctexbook}%
}

\ProcessOptions\relax

%---------------------------------------------------------------------------%
%->> Load class information
%---------------------------------------------------------------------------%

\LoadClass[a4paper,UTF8,twoside,zihao=-4,openany]{ctexbook}

%---------------------------------------------------------------------------%
%->> Required packages
%---------------------------------------------------------------------------%
\RequirePackage{multirow, setspace}
\RequirePackage{indentfirst}%首行缩进
%\RequirePackage[colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green]{hyperref}%目录
\RequirePackage[hidelinks]{hyperref}%目录
\RequirePackage{titlesec}%章节标题格式
\RequirePackage{geometry}%页边距
\RequirePackage{graphicx}%图片
\RequirePackage{fancyhdr}%页眉页脚
\RequirePackage{caption}%去图注冒号
%\RequirePackage{titlesec}
\RequirePackage{titletoc}
\setlength{\parindent}{2em}%首行缩进

%\CTEXsetup[name={第,章},format={\centering\heiti\zihao{3}}]{section}
%\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsection}
%\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsubsection}
%---------------------------------------------------------------------------%
%->> Page layout,页面布局
%---------------------------------------------------------------------------%
\geometry{left = 2.7cm, right = 2.7cm, top = 3.5cm, bottom = 2.6cm}
%\renewcommand{\thechapter}{\arabic{chapter}}
\titleformat{\chapter}{\centering\bfseries\heiti\zihao{3}}{第\,\thechapter\,章}{1em}{}[\vspace{-1cm}]
\titleformat{\section}{\raggedright\bfseries\heiti\zihao{4}}{\thesection}{1em}{}
\titleformat{\subsection}{\raggedright\bfseries\heiti\zihao{4}}{\thesubsection}{1em}{}
\titlespacing*{\chapter} {0pt}{-22pt}{44pt}%左上下
%\titlecontents{section}[left]{above-code}{numbered-entry-format}{numberless-entry-format}{~\titlerule*[0.6pc]{$.$}~\contentspage}[below-code]%设置目录标题格式
\ctexset{chapter = {number = \arabic{chapter}}}%解决目录中章编号非阿拉伯的情况
%\CTEXsetup[name = {第,章}]{chapter}
%\titlecontents{chapter}[4em]{\bfseries\zihao{5}\vspace{10pt}}{\contentslabel{4em}}{\hspace*{-4em}}{~\titlerule*[0.6pc]{$.$}~\contentspage}
%---------------------------------------------------------------------------%
%->> Custom commands,自定义命令
%---------------------------------------------------------------------------%

\newcommand\institute[1]{\def\BUCT@value@institute{#1}}
\newcommand\major[1]{\def\BUCT@value@major{#1}}
\newcommand\class[1]{\def\BUCT@value@class{#1}}
\newcommand\studentid[1]{\def\BUCT@value@studentid{#1}}
\renewcommand\title[1]{\def\BUCT@value@title{#1}}
\newcommand\titleen[1]{\def\BUCT@value@titleen{#1}}
\renewcommand\author[1]{\def\BUCT@value@author{#1}}
\newcommand\teacher[1]{\def\BUCT@value@teacher{#1}}
%\newcommand\symbols[1]{\def\IHEP@value@symbols{#1}}
\def\dufan{~\textbf{独凡}~}

%\renewcommand\thefigure{\@arabic\c@chapter--\@arabic\c@figure}%可行
\renewcommand {\thefigure} {\thechapter{}-\arabic{figure}} 
\captionsetup[figure]{labelsep=quad}


%\CTEXsetup[format={\raggedright\heiti\zihao{-4}}]{subsubsubsection}
%\ctexset{section={
%		name   = {第,章},
%		format = {\centering\heiti\zihao{3}}
%}
%	subsection{
%		format = {\raggedright\heiti\zihao{4}},
%	}
%}
%\ctexset[format={\raggedright\heiti\zihao{4}}]{subsection}
%\titleformat{\section}{\centering\zihao{3}\heiti}{第\,\thesection\,章}{1em}{}[]

\setCJKfamilyfont{hk}{华文行楷}
\newcommand{\hk}{\CJKfamily{hk}}

\setCJKmainfont[BoldFont={黑体}]{宋体}
\usepackage{fontspec}
\setmainfont{Times New Roman}

\renewcommand{\contentsname}{\heiti\zihao{3}\textbf{目\hspace{1em}录}}

%\linespread{1.2}
\setlength{\baselineskip}{22pt}%22磅
%\renewcommand{\baselinestretch}{2}
%\renewcommand{\baselinestretch}{1.5}%1.5倍

%\usepackage{geometry}



%---------------------------------------------------------------------------%
%->> Header and footer,页眉页脚
%---------------------------------------------------------------------------%
\pagestyle{fancy}
%	\lhead{}
%	\chead{\zihao{-5}北京化工大学本科毕业设计(论文)}
%	\rhead{}
%	\lfoot{}
%	\cfoot{\bfseries\thepage}
%	\rfoot{}
	%\pagenumbering{Roman} %arabic 阿拉伯;Roman;roman;
	\fancyhead[LE,LO,RE,RO]{}
	\fancyfoot[C]{\bfseries\thepage}
	\fancyhead[C]{\zihao{-5}北京化工大学毕业设计(论文)}
	\renewcommand{\headrulewidth}{0.4pt} %页眉下线宽
	\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{\pagestyle{fancy}}%解决chapter页页眉不显示问题

%-------------------------页眉页脚----------------------------



%\newif\ifmaketitle
%\DeclareOption{titlepag}{\@maketitletrue}
%\DeclareOption{notitlepag}{\@maketitlefalse}
%\def\maketitlefalse{
%	123
%}
%\def\maketitletrue{
%	456
%}
%---------------------------------------------------------------------------%
%->> Titlepage,封面
%---------------------------------------------------------------------------%

\renewcommand{\maketitle}{\begin{titlepage}

	\raggedleft			
		{\zihao{4}\textbf{班级：{\BUCT@value@class~} 学号：{\BUCT@value@studentid~}}}\\
		\vspace{2em}

	\centering
		{\zihao{-0}\textbf{\hk{北京化工大学}}}\\
		\vspace{3em}
		{\zihao{1}\textbf{毕业设计(论文)}}\\
		\vspace{3em}
		{\zihao{3}\textbf{论文题目：\BUCT@value@title}}\\
%		{\zihao{3}\textbf{论文题目：基于latex的毕业设计\\论文模板}}\\
		\vspace{3ex}
		
		\begin{table}[h]
			\centering
			\zihao{4}
			\renewcommand\arraystretch{2}
			\begin{tabular}{ll}
				\textbf{学院名称：}& \textbf{\BUCT@value@institute}   \\
				\textbf{专\hspace{2em}业：}& \textbf{\BUCT@value@major}  \\
				\textbf{学生姓名：} &\textbf{\BUCT@value@author}     \\
				\textbf{导师姓名：} &\textbf{\BUCT@value@teacher}   \\
			\end{tabular}
		\end{table}
%		\vspace{2em}
		\vskip 2em
		% Please add the following required packages to your document preamble:
		% \usepackage{multirow}
		\begin{table}[h]
			\centering
			\renewcommand\arraystretch{1.5}
			\begin{tabular}{|c|p{10em}|p{10em}|}
				\hline
				\textbf{考核成绩}                        & \multicolumn{2}{l|}{}                             \\ \hline
				\multirow{7}{6em}{\textbf{审核小组成\\员以及职称}} & \multicolumn{1}{c|}{\textbf{姓名}} & \multicolumn{1}{c|}{\textbf{职称}} \\ \cline{2-3} 
				&                         &                         \\ \cline{2-3} 
				&                         &                         \\ \cline{2-3} 
				&                         &                         \\ \cline{2-3} 
				&                         &                         \\ \cline{2-3} 
				&                         &                         \\ \cline{2-3} 
				&                         &                         \\ \hline
			\end{tabular}
		\end{table}
		

\end{titlepage}}

%---------------------封面----------------------


\newcommand{\myspace}[1]{\par\vspace{#1\baselineskip}}

%---------------------------------------------------------------------------%
%->> Declaration of Integrity,诚信申明
%---------------------------------------------------------------------------%

\renewcommand{\frontmatter}{
	\begin{center}
		{\heiti\zihao{3}\bfseries{诚信申明}}\\
	\end{center}
	
	\begin{flushleft}
		{\zihao{3}本人申明：}\par
	\end{flushleft}
	\begin{spacing}{2.0}
	{\zihao{3}本人所呈交的毕业设计（论文），是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本申明的法律结果由本人承担。}
%	\\[1em]\par
	\myspace{1}
	{\zihao{3}\hspace{3em}本人签名：\hspace{8em}日期：\hspace{8em}}
	\end{spacing}
	
	\pagenumbering{Roman} %arabic 阿拉伯;Roman;roman;
	\setcounter{page}{0}
	\clearpage
}

%---------------------------------------------------------------------------%
%->> Chinese Abstract,中文摘要
%---------------------------------------------------------------------------%

\newcommand{\abstractzh}[2]{
	\begin{center}
		{\heiti\zihao{3}\textbf{\BUCT@value@title}}\\
%		\myspace{1}
		\vspace{1em}
		{\heiti\zihao{-3}\textbf{摘\hspace{1em}要}}
%		\myspace{1}
		\vspace{1ex}
	\end{center}
	{\zihao{4}#1}
	\myspace{1}
	\noindent{\heiti\zihao{4}\textbf{关键词：}}{\songti\zihao{4}#2}
}

%---------------------------------------------------------------------------%
%->> Abstract,英文摘要
%---------------------------------------------------------------------------%
\newcommand{\abstracten}[2]{
	\begin{center}
		{\zihao{3}\textbf{\BUCT@value@titleen}}\\
%		\myspace{3}
		\vspace{3em}
		{\heiti\zihao{-3}{ABSTRACT}}\\
%		\myspace{2}
		\vspace{2ex}
	\end{center}
	#1
	\myspace{1}
	\noindent{\heiti\zihao{4}\textbf{KEY\hspace{1em}WORDS：}}{\songti\zihao{4}#2}
}
%---------------------------------------------------------------------------%
%->> Explanation of symbols and acronyms,符号和缩略词说明
%---------------------------------------------------------------------------%
\newcommand{\symbolpage}[1]{
	\begin{center}
		{\heiti\zihao{3}符号和缩略词说明}\\
		\myspace{1}
%		{~\IHEP@value@symbols~}
		#1
	\end{center}
}
%---------------------------------------------------------------------------%
%->> Explanation of symbols and acronyms,符号和缩略词说明
%---------------------------------------------------------------------------%
\newcommand{\startmain}{
	\clearpage
	\pagenumbering{arabic}
%	\CTEXsetup[name={第,章},format={\centering\heiti\zihao{3}}]{section}
%	\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsection}
}

%---------------------------------------------------------------------------%
%->> Explanation of symbols and acronyms,致谢
%---------------------------------------------------------------------------%
\newcommand{\acknowledgements}[1]{
	\clearpage
	\begin{center}
		{\heiti\zihao{3}\textbf{致\hspace{1em}谢}}\par
	\end{center}
	\begin{spacing}{2.0}
	{\zihao{3}#1}
	\end{spacing}
}
%---------------------------------------------------------------------------%
%->> Appendix,附录
%---------------------------------------------------------------------------%
\renewcommand{\appendix}[2]{
	\clearpage
	\begin{center}
		{\zihao{3}\textbf{\heiti{附\hspace{1em}录}#1}}\par
	\end{center}
	#2
}


\endinput


















