\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Boostan-BasicStyle}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
\LoadClass[10pt,a4paper,oneside]{memoir}


% در مورد تقدم و تاخر وارد کردن بسته ها تنها باید به چند نکته دقت کرد:
% الف) بسته xepersian حتما حتما باید آخرین بسته ای باشد که فراخوانی می شود
% ب) بسته hyperref جزو آخرین بسته هایی باید باشد که فراخوانی می شود.
% ج) بسته glossaries حتما باید بعد از hyperref فراخوانی شود.
% د) بسته listings باید حتما قبل از  hyperref فراخوانی شود.

% تمام بسته های مورد نیاز برای ایجاد یک پایان نامه به صورت کامل اینجا آورده
% شده است در صورتی که بخواهید از بسته های دیگر استفاده کنید بهتر است که انها را
% به گونه ای انتخاب کنید که با این بسته ها تداخل نداشده باشد. نکته این که به نظر
% من استفاده از همین بسته ها کافی است.
\usepackage{amsthm}
\usepackage{amssymb}
\usepackage{amsmath}
% بسته‌ای برای وارد کردن سمبل فاز برای کارهای ریاضیاتی. این دستور به صورت
% \phase{H} در متن مورد استفاده قرار می‌گیرد.
% \usepackage{steinmetz}

% برای تنظیم حاشیه صفحات
\usepackage{geometry}

% برای رنگی کردن متن و استفاده از رنگ در متن این دو بسته مورد نیاز است.
\usepackage[usenames,dvipsnames]{color}
\usepackage[usenames,dvipsnames]{xcolor}

%% بسته ای برای وارد کردن Watermarking
\usepackage{draftwatermark}

%% این سه بسته برای آوردن استایل‌های فصل‌های memoir مورد نیاز است. 
\usepackage{fourier}
\usepackage[scaled=.92]{helvet}
\usepackage{calc}

% بسته ای برای استفاده از اشکال برای آیتم‌ها
\usepackage{pifont}

% بسته ای برای آوردن فهرست اختصارات در متن، ما دیگر از این بسته استفاده
% نمی‌کنیم، به جای آن از بسته glossaries برای وارد کردن فهرست اختصارات استفاده
% می‌کنیم.
% \usepackage[intoc]{nomencl}

% اگر بخواهید چند شکل را در کنار همدیگر داشته باشید، از این بسته استفاده می‌کنیم.
\usepackage[font=footnotesize,labelformat=empty]{subfig}

% بسته ای برای این که در جدول یک متن را در چند سطر بیاوریم.
\usepackage{multirow}

% بسته‌ای برای وارد کردن نمایه در متن
\usepackage{makeidx}

% بسته ای برای وارد کردن کدهای برنامه نویسی (MATLAB، JAVA و ...( در متن
% بارگذاری بسته listings باید قبل از hyperref باشد و گرنه با خطا مواجه خواهیم شد
\usepackage{listings}

\usepackage{framed}

% بسته ای برای وارد کردن الگوریتم در متن
\usepackage{algorithm,algorithmic}

% بسته ای برای تنظیم caption‌ تصاویر و جداول، این تنظیمات شامل رنگ، فونت و
% اندازه و فاصله caption جداول و تصاویر می باشد.
\usepackage{caption}

% % در این قالب از بسته graphx برای انجام کارهای گرافیکی استفاده می‌شود. این
% بسته برای اضافه کردن تصویرها به متن استفاده شده است.
\usepackage{graphicx}

% بسته ای برای رسم اشکال و نمودارها
\usepackage{tikz,times}

% بسته ای برای رنگی کردن لینک ها و فعال سازی لینک ها در یک نوشتار، بسته
% hyperref باید جزو آخرین بسته‌هایی باشد که فراخوانی می‌شود.
\usepackage{hyperref}

% % بسته‌ای برای وارد کردن واژه نامه در متن، این بسته باید بعد از hyperref حتما
% صدا زده شود.
\usepackage[sanitize={name=false,description=false,sort=false},nomain,xindy,acronym]{glossaries}

% زی‌پرشین (به انگلیسی: XePersian) یک بسته حروف‌چینی رایگان و متن‌باز برای
% نگارش مستندات پارسی/انگلیسی با زی‌لاتک است.
% در واقع، زی‌پرشین، کمک می‌کند تا به آسانی، مستندات را به پارسی، حروف‌چینی
% کرد. این بسته را وفا خلیقی نوشته است، % و به طور منظم، آن را بروز‌رسانی کرده و
% باگ‌های آن را رفع می‌کند.
% نکته مهم این جا است که بسته Xepersian برای پشتیبانی از زبان فارسی آورده شده
% است، و % می بایست آخرین بسته ای باشد که شما وارد می کنید، دقت کنید: آخرین بسته
\usepackage{xepersian}


\newcommand{\tele}{\item[\Large\color{Bittersweet}\ding{37}]}
\newcommand{\teleO}{\noindent\textcolor{Bittersweet}{\huge\ding{37}}\;}


%% با دستور newtheoremstyle شما می توانید یک استایل جدید برای محیط هایی چون plain، definition‌ و ... تعریف کنید. شکل کلی این دستور به صورت زیر است.

%\newtheoremstyle{stylename}% name of the style to be used
%  {spaceabove}% measure of space to leave above the theorem. E.g.: 3pt
%  {spacebelow}% measure of space to leave below the theorem. E.g.: 3pt
%  {bodyfont}% name of font to use in the body of the theorem
%  {indent}% measure of space to indent
%  {headfont}% name of head font
%  {headpunctuation}% punctuation between head and body
%  {headspace}% space after theorem head; " " = normal interword space
%  {headspec}% Manually specify head
% تعریف محیط‌های گوناگون مانند محیط برای قضیه و ...
% theoremstyle = > plain, definition, remark
% با دستور newtheorem یک نوع از استایلی که در بالای آن تعریف شده است ایجاد می کنیم.
\theoremstyle{plain}
\newtheorem{theorem}{قضیه}
\newtheorem{lemma}{لم}
\newtheorem{proposition}{گزاره}
\theoremstyle{definition}
\newtheorem{definition}{تعریف}
\newtheorem{example}{مثال}
\newtheorem{prob}{سوال}
\theoremstyle{remark}
\newtheorem{corollary}{نتیجه}
\newtheorem{remark}{ملاحظه}

% دستوراتی برای محیط itemize برای حل مشکل قرار دادن bullet و circle در آن.
\renewcommand{\labelitemi}{$\bullet$}
\renewcommand{\labelitemii}{$\circ$}


\makeatother

% تعریف دو متغیر برای  نام شکل و جدول: برای مثال در متن شما می توانید بنویسید (\figurename\ref{figure label} 
% آن ‌گاه در متن نوشته می شود: مثلا شکل ۲.۱ اگر شما این پارامتر را به تصویر نسبت دهید می نویسد: تصویر ۲.۱
\renewcommand{\figurename}{شکل}
\renewcommand{\listfigurename}{فهرست تصاویر}
\renewcommand{\listtablename }{فهرست جداول}
%\renewcommand{\tablename}{جدول}
\renewcommand{\appendixtocname}{پیوست ها}

% تنطمیات مربوط به محیط مراجع 
% کارهای پایانی بعد از اتمام نوشته آوردن مراجع در انتهای گزارش با فرمت خاصی مثل IEEE 
% فرمت مراجع می تواند برای ACM و ... نیز باشد. برای این کار کافی است تنها  پارامتر style را باید تغییر دهید. 
% مراجع همگی در یک فایل bibtex با پسوند .bib  وجود دارد، که می بایست در پوشه اصلی گزارش قرار داده شود.
\let\Oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
	\let\appendix\relax
	\baselineskip=.5cm
	\renewcommand{\bibname}{مراجع}
	\clearpage
	\phantomsection
	\bibliographystyle{ieeetr-fa}
	\Oldbibliography{#1}
}

\graphicspath{{./}{./Pic/}{./Pic/perm/}{./images/}{/usr/share/texmf/tex/xelatex/rcisp/images/}}


% دستور لازم برای تعریف محیط lr برای این که بدون هیچ مشکلی بتوان در عنوان فصل و یا بخش انگلیسی نوشت، 
% نکته مهم: این دستورات باید به عنوان آخرین دستورات استایل شما باشد. 
\makeatletter
\let\orig@lr\lr
\renewcommand*{\lr}[1]{\texorpdfstring{\orig@lr{#1}}{#1}}
\makeatother



