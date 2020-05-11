%---------------------------------------------------------------------------%
%-                                                                         -%
%-                           Document Class                                -%
%-                                                                         -%
%---------------------------------------------------------------------------%

%---------------------------------------------------------------------------%
%->> Identification;标识节
%---------------------------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buctart}[2020/05/10 v0.0 Buctart Template for Undergraduate]


\LoadClass[a4paper,UTF8,twoside,zihao=-4]{ctexart}[2020/05/02]


\RequirePackage{multirow, setspace,fancyhdr}
\RequirePackage{indentfirst}%首行缩进
%\RequirePackage[colorlinks,linkcolor=red,anchorcolor=blue,citecolor=green]{hyperref}%目录
\RequirePackage[hidelinks]{hyperref}%目录
%\RequirePackage{titlesec}%章节格式
\RequirePackage{geometry}%页边距
\RequirePackage{graphicx}%图片
\setlength{\parindent}{2em}

\CTEXsetup[name={第,章},format={\centering\heiti\zihao{3}}]{section}
\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsection}
\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsubsection}
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
%\renewcommand{\baselinestretch}{1.5}%1.5倍

%\usepackage{geometry}
\geometry{left = 2.7cm, right = 2.7cm, top = 3.5cm, bottom = 2.6cm}

%-------------------------页眉页脚----------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\bfseries\thepage}
%\pagenumbering{Roman} %arabic 阿拉伯;Roman;roman;
\fancyhead[C]{\zihao{-5}北京化工大学本科毕业设计(论文)}
\renewcommand{\headrulewidth}{0.4pt} % 注意不用 \setlength
\renewcommand{\footrulewidth}{0pt}
%-------------------------页眉页脚----------------------------
\newcommand\institute[1]{\def\IHEP@value@institute{#1}}
\newcommand\major[1]{\def\IHEP@value@major{#1}}
\newcommand\class[1]{\def\IHEP@value@class{#1}}
\newcommand\studentid[1]{\def\IHEP@value@studentid{#1}}
\renewcommand\title[1]{\def\IHEP@value@title{#1}}
\newcommand\titleen[1]{\def\IHEP@value@titleen{#1}}
\renewcommand\author[1]{\def\IHEP@value@author{#1}}
\newcommand\teacher[1]{\def\IHEP@value@teacher{#1}}
%\newcommand\symbols[1]{\def\IHEP@value@symbols{#1}}
\def\dufan{~\textbf{独凡}~}

%\newif\ifmaketitle
%\DeclareOption{titlepag}{\@maketitletrue}
%\DeclareOption{notitlepag}{\@maketitlefalse}
%\def\maketitlefalse{
%	123
%}
%\def\maketitletrue{
%	456
%}
%---------------------封面----------------------

\renewcommand{\maketitle}{\begin{titlepage}

	\raggedleft			
		{\zihao{4}\textbf{班级：{\IHEP@value@class~} 学号：{\IHEP@value@studentid~}}}\\
		\vspace{2em}

	\centering
		{\zihao{-0}\textbf{\hk{北京化工大学}}}\\
		\vspace{3em}
		{\zihao{1}\textbf{毕业设计(论文)}}\\
		\vspace{3em}
		{\zihao{3}\textbf{论文题目：\IHEP@value@title}}\\
%		{\zihao{3}\textbf{论文题目：基于latex的毕业设计\\论文模板}}\\
		\vspace{3ex}
		
		\begin{table}[h]
			\centering
			\zihao{4}
			\renewcommand\arraystretch{2}
			\begin{tabular}{ll}
				\textbf{学院名称：}& \textbf{\IHEP@value@institute}   \\
				\textbf{专\hspace{2em}业：}& \textbf{\IHEP@value@major}  \\
				\textbf{学生姓名：} &\textbf{\IHEP@value@author}     \\
				\textbf{导师姓名：} &\textbf{\IHEP@value@teacher}   \\
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

\newcommand{\frontmatter}{
	\begin{center}
		{\heiti\zihao{3}\textbf{诚信申明}}\\
	\end{center}
	
	\begin{flushleft}
		{\zihao{3}本人申明：}\par
	\end{flushleft}
%	\begin{center}
	\zihao{3}\hspace{2em}本人所呈交的毕业设计（论文），是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本申明的法律结果由本人承担。
%	\\[1em]\par
	\myspace{1}
	\hspace{3em}本人签名：\hspace{8em}日期：\hspace{8em}
%	\end{center}
	
	\pagenumbering{Roman} %arabic 阿拉伯;Roman;roman;
	\setcounter{page}{0}
	\clearpage
}
\newcommand{\abstractzh}[2]{
	\begin{center}
		{\heiti\zihao{3}\textbf{\IHEP@value@title}}\\
%		\myspace{1}
		\vspace{1em}
		{\heiti\zihao{-3}\textbf{摘\hspace{1em}要}}
%		\myspace{1}
		\vspace{1ex}
	\end{center}
	#1
	\myspace{1}
	\hspace{0em}{\heiti\zihao{4}\textbf{关键词：}}{\songti\zihao{4}#2}
}
\newcommand{\abstracten}[2]{
	\begin{center}
		{\zihao{3}\textbf{\IHEP@value@titleen}}\\
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
\newcommand{\symbolpage}[1]{
	\begin{center}
		{\heiti\zihao{3}符号和缩略词说明}\\
		\myspace{1}
%		{~\IHEP@value@symbols~}
		#1
	\end{center}
}
\newcommand{\startmain}{
	\clearpage
	\pagenumbering{arabic}
%	\CTEXsetup[name={第,章},format={\centering\heiti\zihao{3}}]{section}
%	\CTEXsetup[format={\raggedright\heiti\zihao{4}}]{subsection}
}

\newcommand{\acknowledgements}[1]{
	\clearpage
	\begin{center}
		{\heiti\zihao{3}\textbf{致\hspace{1em}谢}}\par
	\end{center}
	#1
}

\renewcommand{\appendix}[1]{
	\clearpage
	\begin{center}
		{\heiti\zihao{3}\textbf{附\hspace{1em}录}}\par
	\end{center}
	#1
}


\endinput


















