\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Boostan-Book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{Boostan-Book}}
\ProcessOptions
\LoadClass[10pt,a4paper,oneside]{../style/Boostan-BasicStyle}

%%
% بسته‌های مورد نیاز
% 
% بسته‌های متفاوتی در این الگو به کار گرفته شده است. فهرست تمام این بسته‌ها عبارت است
% از:
% 
% - 
% 
% مهم‌ترین بسته‌ای که در این نوشتن یک طرح استفاده می‌شود بسته gant است که برای نوشتن
% زمانبندی مورد استفاده قرار خواهد گرفت. پروژه باید به فاز‌ها و وظیفه‌های متفاوت
% تقسیم شده و در یک جدول نمایش داده شود.
%
% تنظیم‌های اولیه
% 
% تنظیم‌های اولیه شامل قلم، حاشیه،‌شماره‌گذاری می‌شود. تمام این تنظیم‌ها به صورت پیش فرض تغیین
% شده است.
% 
% ## قسمت بندی
% 
% قسمت بندی در یک پیشنهاد طرح مانند یک مقاله است و شمال هیچ فصل و گفتاری نیست. در اینجا
% تنها از بخش و سایر قسمت‌ها استفاه شده است.
% 
% شماره‌گذاری نیز بر اساس سیستم‌ شماره‌گداری عربی انجام خواهد شد. از این رو بخش‌ها از بخش 1 
% شروع شده و تا بخش انتهایی ادامه خواهد یافت.
% 
\counterwithout{section}{chapter}
\def\thesection{\arabic{section}}
\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\thefigure}{\arabic{figure}}
\renewcommand{\thetable}{\arabic{table}}
\geometry{
	top=2.8cm,
	bottom=3cm,
	left=2.2cm,
	right=2.3cm
}

\setlength{\footnotesep}{0.5cm}
\setlength{\skip\footins}{2cm}

\hypersetup{
	pdfmenubar=false, pdfstartview=FitH, 
	colorlinks=true,
	linkcolor=blue,
	anchorcolor=green,
	citecolor=magenta,
	urlcolor=cyan,
	filecolor=magenta,
	pdftoolbar=true
}

\captionsetup{
	margin=10pt,
	font=small,
	labelfont=bf,
	labelformat=parens,
	textfont={small},
	skip=9pt
}

\SetWatermarkLightness{.98}
\SetWatermarkAngle{45}
\SetWatermarkScale{1.5}

%%
% \brief تعریف متغیر‌ها
% 
% متغیرهایی که برای تعریف یک طرح پروژه در نظر گفته شده است متفاوت و کمی بیشتر از
% سایر حالت‌ها است. در فهرست زیر تمام متغیر‌های مورد نیاز تعریف شده است. در هر
% طرح تمام این متغیر‌ها باید به صورت کامل تعریف شده و در صورت عدم وجود به صورت
% خالی رها شود:
% 
% - پژوهشکده
% - گروه تخصصی
% - نوع پروژه
% - عنوان پروژه
% - زیر عنوان پروژه
% - کارفرما
% - پیشنهاد دهنده
% - مدیری پروژه
% - تاریخ ارائه
% - شماره سند
% - تاریخ شروع پروژه
% - تاریخ پایان پروژه
% 
% به عنوان نمونه می‌توان برای تعیین کردن تمام این موارد از تکه کد زیر استفاده
% کرد:
% 
% - \institute{پژوهکشده}
% - \group{ نام گروه}
% - \type{نوع پروژه}
% - \title{عنوان پروژه}
% - \subtitle{کاربرد محصول برای استفاده در زیر عنوان}
% - \author{افراد و گروه‌های پدید آوردنه}
% - \projectManager{پیشنهاد دهنده}
% - \date{تاریخ}
% - \version{1}
% - \supervisor{نام ناظر}
% - \startData{تاریخ شروع}
% - \executionTime{مدت زمان اجرای پروژه}
% 
\gdef\@institute{پژوهکشده}
\def\institute#1{\gdef\@institute{#1}}

\gdef\@group{نام گروه}
\def\group#1{\gdef\@group{#1}}

\gdef\@type{نوع پروژه}
\def\type#1{\gdef\@type{#1}}

\gdef\@title{عنوان پروژه}
\def\title#1{\gdef\@title{#1}}

\gdef\@subtitle{کاربرد محصول برای استفاده در زیر عنوان}
\def\subtitle#1{\gdef\@subtitle{#1}}

\gdef\@author{افراد و گروه‌های پدید آوردنه}
\def\author#1{\gdef\@author{#1}}

\gdef\@projectManager{پیشنهاد دهنده}
\def\projectManager#1{\gdef\@projectManager{#1}}

\gdef\@date{تاریخ}
\def\date#1{\gdef\@date{#1}}

\gdef\@version{1}
\def\version#1{\gdef\@version{#1}}

\gdef\@supervisor{نام ناظر} 
\def\supervisor#1{\gdef\@supervisor{#1}}

\gdef\@startData{تاریخ شروع}
\def\startData#1{\gdef\@startData{#1}}

\gdef\@executionTime{مدت زمان اجرای پروژه}
\def\executionTime#1{\gdef\@executionTime{#1}}



%%
% \abstract Font  
% قلم‌های به کار رفته. در این قالب مستند به صورت پیش فرض از قلم‌های زیر استفاده
% شده است که باید پیش از استفاده از این الگو آنها را نصب.
% 
% - Titr Bold
% - Zar
% - B Nazanin
% - Times New Roman
% 
%
\defpersianfont\pejoheshfontP[Scale=1.4]{Titr Bold}
\defpersianfont\groupfontP[Scale=1.4]{Zar}
\defpersianfont\titlefontP[Scale=2.4]{Titr Bold}
\defpersianfont\proposalFontP[Scale=1.8]{B Nazanin}
\defpersianfont\InstituteFontP[Scale=1.2]{B Nazanin}
\defpersianfont\tableFontP[Scale=1]{B Nazanin}
\settextfont[Scale=1.3]{B Nazanin} 
\setlatintextfont[Scale=1]{Times New Roman}










%%
% \abstract environment
%
\newenvironment{ebox}{}{}
\newenvironment{note}{}{}
\newenvironment{info}{}{}
\newenvironment{webreference}{}{}
\newenvironment{warning}{
	اخطار:
}{}


%%
% \abstract language
%
\lstset{% general command to set parameter(s)
	language=Java,
	backgroundcolor=\color{gray!20},
	frameround=fttt,
	frame=trBL,
	basicstyle=\ttfamily, % print whole listing small
	keywordstyle=\color{blue}\bfseries,
	stringstyle=\ttfamily\color{red}, % typewriter type for strings
	commentstyle=\color{LimeGreen},
	lineskip = .5pt,
	numberstyle=\footnotesize, 
	numbersep=10pt,
	numbers=left,
	captionpos=b, 
	breaklines=true,
	showstringspaces=true
} 

\lstnewenvironment{Config}{
	\latin
	\lstset{
		language=C++,
		backgroundcolor=\color{yellow},
	}
}{
	\endlatin
}

\lstnewenvironment{config}{
	\latin
	\lstset{language=C++}
}{
	\endlatin
}

\lstnewenvironment{C++}{
	\latin
	\lstset{language=C++}
}{
	\endlatin
}

\lstnewenvironment{Java}{
	\latin
	\lstset{language=Java}
}{
	\endlatin
}

\lstnewenvironment{MSC}{
	\latin
	\lstset{language=C++}
}{
	\endlatin
}

\lstnewenvironment{Tex}{
	\Latin
	\lstset{language=Tex}
}{
	\endLatin
}

\lstnewenvironment{Shell}{
	\latin
	\lstset{language=bash}
}{
	\endlatin
}

\lstnewenvironment{doxygen}{
	\latin
	\lstset{language=bash}
}{
	\endlatin
}

\lstnewenvironment{latex}{
	\latin
	\lstset{language=Tex}
}{
	\endlatin
}


