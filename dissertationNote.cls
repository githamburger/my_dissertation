\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dissertationNote}[2015/09/29 for dissertation note]
\LoadClass[zihao=5,fntef,openany,scheme=chinese]{ctexart}

%---------- 加载宏包 ----------

\RequirePackage{fancyhdr}
% 数学公式
\RequirePackage{amsmath}
% 公式中的粗体
\RequirePackage{bm}
% 公式中的括号，例如subnumcases环境
\RequirePackage{cases}
%  pifont 宏包提供带圈的数字符号，这里用作脚注的标号，根据GB/T 7713.1-2006要求。
\RequirePackage{pifont}
% 插图包
\RequirePackage{graphicx}
% 设置图片，表格头字体选项
\RequirePackage{caption}
% 并排图形。subfigure、subfig 已经不再推荐，并与新的 subcaption不兼容！！！
\RequirePackage{subcaption}
% 三线表
\RequirePackage{booktabs}
% 长表格宏包，tabu宏包longtabu环境需要。
\RequirePackage{longtable}
% 制表宏包，推荐使用，不使用其他制表宏包。
\RequirePackage{tabu}
% 下划线
\RequirePackage{ulem}
% 表格处理必备宏包
\RequirePackage{array}
% hyperref 宏包可根据交叉引用生成超链接，同时生成 PDF 文档的书签。
\RequirePackage{hyperref}
\AtEndOfClass{
	\hypersetup{
		unicode,
		% hyperfootnotes=false,
	    pdfstartview=FitH,
	    CJKbookmarks=true,
	    bookmarksnumbered=true,
	    bookmarksopen=true,
	    % colorlinks=true,		% 链接颜色默认关闭，hidelink打开。
	    % citecolor=blue,
	    % linkcolor=blue,
	    % anchorcolor=blue,
	    % urlcolor=blue,
		hidelinks,			% 隐藏超链接的颜色和边框。
		% draft,				% 草稿模式，提高编译速度，需要时注释掉就可以了。
	}
}
\urlstyle{same}
% 参考文献正文上标样式设置
\RequirePackage[sort&compress,numbers]{natbib}
% hypernat 可以让hyperref 和natbib 混合使用，但它需要放在这两者之后。
\RequirePackage{hypernat}
% 修复图表超链接不准的问题
\RequirePackage[all]{hypcap}
% footmisc 宏包提供了对脚注样式的控制功能。
% stable参数主要使脚注\footnote可以用在章节命令中；
% perpage
\RequirePackage[stable,perpage,symbol*]{footmisc}

%---------- 页面设置 ----------
\RequirePackage[
	left=2.4cm,
	right=2.2cm,
	top=2.8cm,
	bottom=2.2cm,
	xetex,
	% showframe,
]{geometry}


% 采用gbt7714-2005参考文献样式，
% 参考自https://github.com/githamburger/GBT7714-2005-BibTeX-Style
\bibliographystyle{gbt7714-2005}

% natbib宏包命令，参考文献上标设置。
\setcitestyle{super,square,comma}
