\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{enisareport}
              [2021/09/15 v1.0.2
 enisa LaTeX document class]
\LoadClass{report}

\RequirePackage{etoolbox}
\RequirePackage{environ}
\RequirePackage{xparse}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{calc}
\RequirePackage{afterpackage}
% \RequirePackage[strict]{changepage}
\RequirePackage[document]{ragged2e}% Set the whole document RaggedRight.
\RequirePackage[figuresright]{rotating}
\RequirePackage{parskip}% fix spacing around contents, lists, sectioning when \parskip is not 0pt.
%
%
\RequirePackage{textcase}% use \MakeTextUppercase instead of \MakeUppercase
% dimensions
\newlength\trimwidth
\newlength\trimheight
\newlength\typewidth
\newlength\typemargin
\setlength\hoffset{-1in}%
\setlength\voffset{-1in}%
\setlength\headheight{60pt}%
\setlength\headsep{21pt}%
\setlength\trimwidth{210mm}%
\setlength\trimheight{297mm}%
\setlength\paperwidth{\trimwidth}%
\setlength\paperheight{\trimheight}%
\setlength\topmargin{90pt-\headsep-\headheight}% measured
\setlength\evensidemargin{62bp}%
\setlength\oddsidemargin{\evensidemargin}%
\setlength\textwidth{378.96bp}%
\setlength\textheight{690bp}%
\setlength\columnsep{4mm}
\setlength\columnwidth{(\textwidth-\columnsep)/2}%
\setlength\columnseprule{0\p@}%
%\setlength\marginparwidth{6pc}%
%\setlength\marginparsep{1.8pc}%
\setlength\parindent{0pt}%
\setlength\parskip{8pt plus0.1pt minus.1pt}%
\setlength\topskip{11pt}%
\setlength\footskip{36.65pt}
%\setlength\skip\footskip{36.65pt}
\skip\footins=18.0pt plus 4.0pt minus 2.0pt\relax
%\setlength\typemargin{\marginparsep+\marginparwidth}
%\setlength\typewidth{\textwidth+\typemargin}
\setlength\typewidth{500pt}% measured
\setlength\typemargin{\typewidth-\textwidth}
\setlength\marginparsep{1.8pc}%
\setlength\marginparwidth{\typemargin-\marginparsep}%
% \addtolength{\skip\footins}{8pt}
%\clubpenalty=\@M%
%\widowpenalty=\@M%
\pretolerance=100%
\tolerance=800%
\hbadness=800%
\doublehyphendemerits=80000%
\emergencystretch=3pt%
\hfuzz=1pt%
\renewcommand\normalsize%
{%
  \@setfontsize\normalsize{10}{12pt plus .2pt minus .2pt}%    pdf 10pt
  \abovedisplayskip 10\p@ \@plus1\p@ \@minus1\p@%
  \abovedisplayshortskip 6\p@ \@plus2\p@%
  \belowdisplayshortskip 6\p@ \@plus2\p@%
  \belowdisplayskip \abovedisplayskip%
}
%
\RequirePackage[T1]{fontenc}
%
% Main text and math font - NotoSansa
%
\RequirePackage[sfdefault,nott]{noto}
\RequirePackage[notosans,amssymbols]{newtxmath}
%
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\let\Bbbk\relax
\RequirePackage{amssymb}
\RequirePackage{float}% option [H] can be used (non-float figure)
%

\RequirePackage[table]{xcolor}
\RequirePackage{colortbl}
\RequirePackage{booktabs}
\RequirePackage{tabularx}

\def\colhead#1{\textcolor{white}{\textbf{#1}}}
% \setlength\minrowclearance{5pt}
% \setlength\extrarowsep{4pt}
\def\arraystretch{1.5}
%
\RequirePackage{graphicx}
\RequirePackage{caption}
\captionsetup%
{%
   labelsep=colon,
   labelfont={bf,color=enisared},%
   textfont={sf,color=enisared},%
   justification=RaggedRight,
   skip=6pt,
   listformat=simple,
   singlelinecheck=false,
 }
%\appto\@floatboxreset{\centering}
%
%
 \setcounter{topnumber}{5}
\def\topfraction{0.99}
\def\textfraction{0.05}
\def\floatpagefraction{0.9}
\setcounter{bottomnumber}{5}
\def\bottomfraction{0.99}
\setcounter{totalnumber}{10}
\def\dbltopfraction{0.99}
\def\dblfloatpagefraction{0.8}
\setcounter{dbltopnumber}{5}
%
\ExplSyntaxOn
\csdef{figure*}
{
  \setlength\columnwidth{\typewidth}
  \@float{figure}
}
\csdef{endfigure*}{\end@float}
%
% In \@float (=={table}) \hsize is to to equal to \columnwidth.
% In {table*} we set \columnwidth to typewidth, so \hsize is set to \typewidth
%
%
\csdef{table*}%
{%
  \setlength\columnwidth{\typewidth}%
  \@float{table}%
}
\csdef{endtable*}{\end@float}
\ExplSyntaxOff
%
%
% Corporate colors
%
\definecolor{enisablue}              {RGB}{  0,  79, 159}
\definecolor{enisared}               {RGB}{203,   5,  56}
\definecolor{enisa_red}              {RGB}{238, 117, 109}
\definecolor{enisa_green}            {RGB}{149, 193,  31}
\definecolor{enisa_orange}           {RGB}{249, 178,  51}
\definecolor{enisa_bluelight}        {RGB}{ 91, 197, 242}
\definecolor{enisa_bluegraphics}     {RGB}{113, 151, 207}
\definecolor{enisa_bluegraphicslight}{RGB}{188, 212, 240}
\definecolor{enisa_black}            {RGB}{ 29,  29,  27}
\definecolor{enisa_grey80}           {RGB}{ 87,  87,  86}
\definecolor{enisa_grey50}           {RGB}{157, 156, 156}
\definecolor{enisa_grey40}           {RGB}{178, 178, 178}
\definecolor{enisa_grey30}           {RGB}{198, 198, 198}
\definecolor{enisa_grey11}           {RGB}{235, 235, 235}
%
% Set colors 'black', 'blue', and 'red' to use
% corporate colors by default.
% Other color names have a prefix "enisa_".
%
\colorlet{black}{enisa_black}
\colorlet{blue}{enisablue}
\colorlet{red}{enisared}
\colorlet{ENISARED}{enisared}
%
% Chapter
%
\def\@makechapterhead#1{%
  \vspace*{0\p@}%
  {\parindent \z@ \raggedright \normalfont%
    \ifnum \c@secnumdepth >\m@ne%
      \color{enisared}%
      \fontsize{25}{27}\selectfont%
      \thechapter%
      \enskip%
    \fi%
    \MakeTextUppercase{#1}\par
    \nobreak%
    \vskip 40\p@%
  }}
%
\def\@makeschapterhead#1{%
  \vspace*{0\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \fontsize{25}{27}\selectfont
    \color{enisared} \MakeTextUppercase{#1}\par\nobreak
    \vskip 40\p@
  }}
%
%
% Sectioning
%
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-1\bigskipamount}%
                                   {.1pt}%
                                   {%
                                     \normalfont%
                                     \fontsize{12}{14}%
                                     \bfseries%
                                     \color{enisablue}%
                                    \mathversion{bold}%
                                    \MakeTextUppercase}%
                                }
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
                                   {-1\bigskipamount}%
                                   {.1pt}%
                                   {%
                                     \normalfont%
                                     \fontsize{12}{14}%
                                     \bfseries%
                                     \color{enisablue}%
                                    \mathversion{bold}%
                                    }%
                                }
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}%
                                    {-1\bigskipamount}%
                                    {.1pt}%
                                    {\normalfont%
                                     \fontsize{10}{12}%
                                     \bfseries%
                                     \color{enisablue}%
                                     \mathversion{bold}%
                                   }}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {-1\bigskipamount}%
                                    {-1em}%
                                    {\normalfont%
                                     \fontsize{10}{12}%
                                     \bfseries%
                                     \color{enisa_green}%
                                     \mathversion{bold}%
                                   }}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\z@}%
                                    {-1\bigskipamount}%
                                    {-1em}%
                                    {\normalfont%
                                     \fontsize{10}{12}%
                                     \bfseries\itshape%
                                     \color{enisa_green}%
                                     \mathversion{bold}%
                                   }}

\setcounter{secnumdepth}{3}
% 
% Section (headers) has 'red' numbers independently of the heading level.
%
\def\@seccntformat#1{\textcolor{enisared}{\csname the#1\endcsname}\enskip}
\def\paragraphcntformat#1{{\normalfont#1}}
\def\subparagraphcntformat#1{{\normalfont\itshape#1}}
%
% Footnotes
% 
\RequirePackage{footmisc}
\setlength\footnotemargin{-8pt}
\def\footnoterule%
{%
  \kern-3pt
  \hrule width 11pc height.5pt
  \kern 2.6pt
} % the \hrule is .4pt high
\appto\footnotelayout{\color{enisa_grey50}}
\def\@makefnmark{\hbox{\@textsuperscript{\normalfont\thefnmarkfmt{\@thefnmark}}}}
\let\thefnmarkfmt\relax
%
% patch @makefntext to make thefnmark gray in footnote area, but not in text.
\pretocmd\@makefntext{\def\thefnmarkfmt{\textcolor{enisa_grey50}}}{}
                      {\@latex@error{Patching makefntex failed: please file an issue on github page}\@ehc}
%
\def\enisalogo{\hbox{\vbox to 0pt%
    {%
      \vskip-1pc%
      \vskip-24pt%
      \includegraphics[scale=.88]{enisa-logo}%
    }%
  }%
}
%
\def\header@title@fmt#1{\fontsize{11}{13}\selectfont\textcolor{enisablue}{\MakeTextUppercase{#1}}}
\def\header@subtitle@fmt#1{#1}
\def\header@date@fmt#1{\textcolor{enisa_grey80}{#1}}
\def\header@draftdata@fmt#1{\textcolor{enisa_grey80}{#1}}
\ExplSyntaxOn
\def\enisaheadertext
{
  \parbox[t]{\textwidth}
  {
    \raggedleft
    \vskip-2pc
    \vskip-24pt
    \header@title@fmt{\@rhtitle}\\
    \header@subtitle@fmt{\@rhsubtitle}\\
    \header@date@fmt{\@marking\space |\space \@date}
    \par
  }
}
\def\enisaheadertextdraft
{
  \parbox[t]{\textwidth}
  {
    \raggedleft
    \vskip-2pc
    \vskip-24pt
    \header@title@fmt{\@title}\\
    \header@draftdata@fmt{\@status ~|~ \@version ~|~ \@marking ~|~ \@date}
    \par
  }
}
\def\enisaheader
{
  \hskip-\oddsidemargin
  \hskip1pc
  \parbox{\trimwidth-2pc}
  {
    \enisalogo
    \hfill
    \enisaheadertext
  }
  \hss
}
\def\enisafooterlogo
{
  \hbox
  {
    \vbox to 36pt
    {
      \vskip0pc
      \hbox
      {
        \includegraphics{enisa-footer}
      }
    }
  }
}
\def\enisafooter
{
  \hskip-\oddsidemargin
  \hskip1pc
  \rlap
  {
    \parbox{\trimwidth-1pc}{\hfill\enisafooterlogo}\hss
  }
  \rlap
  {
    \noindent\parbox{\typewidth+4.5pc}{\hfill\textcolor{enisablue}{\thepage}}\hss
  }
}
\ExplSyntaxOff
% Header/Footer
\def\ps@headings{%
  \def\@oddfoot{\enisafooter}%
  \def\@evenfoot{\enisafooter}%
  \def\@evenhead{\enisaheader}%
  \def\@oddhead{\enisaheader}%
}
\let\ps@plain\ps@headings
\RequirePackage{enumitem}
\setlist
{%
  topsep=0pt plus2pt,
  partopsep=0pt,
  parsep=6pt,
  % itemsep=-6pt,
  nosep,
}
\setlist[itemize]
{%
  leftmargin=*,
  labelsep=.5em,
  label={\ensuremath{\bullet}},
}
\setlist[enumerate]
{%
%  labelsep=5\p@,
%  listparindent=0\p@,
%  itemindent=0\p@,
%  labelindent=0\p@,
  leftmargin=*,
}
\setlist[description]
{%
  leftmargin=1em,
}
%
% Theorems
\let\openbox\relax
\RequirePackage{amsthm}
\def\th@plain{%
%%  \let\thm@indent\noindent % no indent
  \thm@headfont{\bfseries\color{enisa_orange}}% heading font is bold
%%  \thm@notefont{}% same as heading font
%%  \thm@headpunct{.}% add period after heading
%%  \let\thm@swap\@gobble
%%  \thm@preskip\topsep
%%  \thm@postskip\theorempreskipamount
  \color{enisa_grey80}\itshape % body font
}
\def\th@definition{%
  \thm@headfont{\bfseries\color{enisa_green}}% heading font is bold
  \thm@headpunct{:}% add period after heading
  \normalfont % body font
}
%
\RequirePackage{marginnote}
\renewcommand*{\marginfont}{\color{enisared}\bfseries\RaggedRight}
%
% marginnote color box
% \marginnotebox{<background-color>}{<text>}
\newcommand\marginnoteboxfont{\normalfont\normalsize}
\newcommand\marginnoteboxtitlefont{\large\bfseries}
\newcommand\marginnoteboxtitle[1]{{\marginnoteboxtitlefont \MakeTextUppercase{#1}}\par}
\newcommand\marginnotebox[2]{\marginnote{\@marginnotecolorbox{#1}{#2}}}
\newcommand\@marginnotecolorbox[2]%
{%
  \let\title\marginnoteboxtitle
  \fboxsep=12pt%
  \colorbox{#1}%
  {%
    \noindent\parbox{\typemargin-\fboxsep-\fboxsep+14pt}%
    {%
      \color{white}%
      \marginnoteboxfont
      #2%
      \par
    }%
  }%
}
% Contents
%
%
\def\@dotsep{10000}
%
% taken from V.K. code
%
\renewcommand*\l@chapter{\let\numberline\chapternumberline\@tocline{0}{\z@}{2.5em}}
\renewcommand*\l@section{\let\numberline\sectionnumberline\@tocline{1}{\z@}{2.3em}}
\renewcommand*\l@subsection{\let\numberline\subsectionnumberline\@tocline{2}{\z@}{3.2em}}
\renewcommand*\l@subsubsection{\let\numberline\subsubsectionnumberline\@tocline{3}{\z@}{3.7em}}
\csdef{toc@0@prehook}{\addpenalty{-\@highpenalty}}
\csdef{toc@0@shape}{\csuse{toc@chapterfont}}
%\csdef{toc@1@prehook}{}
\csdef{toc@1@shape}{\csuse{toc@sectionfont}}
%\csdef{toc@2@prehook}{\vskip0pt}
%\csdef{toc@2@shape}{\csuse{toc@subsectionfont}}
%\def\numberline#1{{#1 }}
%\show\numberline -> 1->\hb@xt@ \@tempdima {#1\hfil }.
\def\chapternumberline#1{\hb@xt@ \@tempdima {#1.\hfil}}
\def\sectionnumberline#1{\hb@xt@ \@tempdima {\textcolor{enisared}{#1}\hfil}}
\def\subsectionnumberline#1{\hb@xt@ \@tempdima {\textcolor{enisared}{#1}\hfil}}
\let\subsubsectionnumberline\numberline
\newcommand*\@tocline[5]%
{%
%  \c@section@level=#1
  \ifnum #1>\c@tocdepth
  \else
  \begingroup
    \csuse{toc@#1@preskip}%
    \csuse{toc@#1@prehook}%
    \hsize=\typewidth\relax
    % \advance\hsize-25pt
    \leftskip #2\relax
    \rightskip \@tocrmarg
    \parfillskip -\rightskip
    \parindent #2\relax
    \@afterindenttrue
    \interlinepenalty \@M
    \leavevmode
    \@tempdima #3\relax
  \advance\leftskip\@tempdima \null
  \nobreak
  \hskip -\leftskip
  \csuse{toc@#1@shape}%
  {#4}\nobreak
  \hfil
  \nobreak
  \hb@xt@ \@pnumwidth
  {%
    \hss
    #5\kern -\p@ \kern \p@
  }%
  \par
  \ifcase #1
  \penalty\@highpenalty
  \vskip4\p@
  \penalty\@highpenalty
  \or
  \vskip4.5\p@ \@plus.5\p@ minus.2\p@
  \else
  \vskip3\p@ \@plus.5\p@ minus.2\p@
  \fi
  \endgroup
  \fi
}
\csdef{toc@chapterfont}%
{%
  \sffamily
  \bfseries
  \fontsize{13.5}{15.65}%
  \color{enisared}%
  \selectfont
  \mathversion{bold}%
  \nohyphen
  \MakeTextUppercase
}
\csdef{toc@sectionfont}%
{%
  \color{enisablue}%
  \bfseries%
  \mathversion{bold}%
  \nohyphen%
  \MakeTextUppercase
}
\def\nohyphen{\hyphenpenalty=10000\relax}
\csdef{toc@0@preskip}{\addvspace{2pc}}% chapter
\csdef{toc@1@preskip}{\addvspace{6pt}}% section
%
% Bibliography
%
\RequirePackage{natbib}
\appto\bibsection{\addcontentsline{toc}{chapter}{\bibname}}
%\citestyle{numbers}
%\NAT@numberstrue
%\renewcommand\NAT@open{[}
%\renewcommand\NAT@close{]}
%%
% hyper features
% \RequirePackage[customdriver=hluadvips,pdfpagelabels=false]{hyperref}
%\RequirePackage[pdfpagelabels=false]{hyperref}
\definecolor{linkcolor}{rgb}{1,0,0}
\AfterPackage{hyperref}%
{%
  \hypersetup
  {
    colorlinks=true,
    bookmarksnumbered=true,
    % allcolors=linkcolor,
    linkcolor=enisablue,
    urlcolor=enisablue,
    filecolor=enisablue,
    menucolor=enisablue,
    runcolor=enisablue,
    citecolor=enisa_red,
    breaklinks=true,
    hypertexnames=false, % Activate global counter; do not use \theH.... counters.
    pageanchor=false, % remove pageanchor.
    setpagesize=false, %% double PS code otherwise.
    % pdfpagelabels=false, % we set pagelabels in esbook-pagelabel.dtx
    unicode=true,
  }%
}
\def\title#1{\def\@title{#1}\def\@rhtitle{#1}}
\def\subtitle#1{\def\@subtitle{#1}\def\@rhsubtitle{#1}}
\def\rhsubtitle#1{\def\@rhsubtitle{#1}}
\def\rhtitle#1{\def\@rhtitle{#1}}
\let\@ISBN\relax
\let\@DOI\relax
\def\ISBN#1{\def\@ISBN{#1}}
\def\DOI#1{\def\@DOI{#1}}
\def\printISBN{ISBN:~\@ISBN}
\def\printDOI{DOI:~\href{https://doi.org/\@DOI}{\@DOI}}
\def\doi#1{doi:~\href{https://doi.org/#1}{\nolinkurl{#1}}}
\let\endbibitem\relax
%
% \maketitle
%
\ExplSyntaxOn
\def\maketitle
{
  \clearpage
  \hrule height0pt
  \vskip.5\textheight
  \parbox[t]{\paperwidth-4pc-8pc}
    {
      \normalsize\normalfont
      \cover@titlefmt{\@title}
      \vskip2pc
      \cover@subtitlefmt{\@subtitle}
      \par
    }
    \vskip4pc
    \parbox[t]{\paperwidth-4pc-8pc}
    {
      \cover@datefmt{\@date}
      \par
    }
  \clearpage
  \nopagecolor
}
\def\cover@titlefmt#1
{
  \raggedright
  {
    \fontsize{50}{52}\selectfont
    \MakeTextUppercase{#1}\par
  }
}
\def\cover@subtitlefmt#1
{
  \raggedright
  {
    \normalfont\normalsize
    \fontsize{20}{26}\selectfont
    #1\par
  }
}
\def\cover@datefmt#1
{
  \raggedright
  {
    \normalfont\normalsize
    \fontsize{20}{26}\selectfont
    \MakeTextUppercase{#1}\par
  }
}
%
\NewDocumentCommand\marking{m}{\gdef\@marking{#1}}
\ExplSyntaxOff
%
% Bibliography
%
% natbib
%
% hyperref
% 
\RequirePackage{hyperref}
\hypersetup{%
  breaklinks=true,
  linktoc=none,
}
\urlstyle{same}
\pagestyle{headings}
\endinput