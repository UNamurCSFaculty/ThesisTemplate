% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                        LICENSE                                         %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                                                                        %
% You are free to:                                                                       %
%    * Share — copy and redistribute the material in any medium or format                %
%    * Adapt — remix, transform, and build upon the material                             %
%    * The licensor cannot revoke these freedoms as long as you follow the license       %
%      terms.                                                                            %
%                                                                                        %
% Under the following terms:                                                             %
%    * Attribution — You must give appropriate credit, provide a link to the license,    %
%      and indicate if changes were made. You may do so in any reasonable manner, but    %
%      not in any way that suggests the licensor endorses you or your use.               %
%    * NonCommercial — You may not use the material for commercial purposes.             %
%    * ShareAlike — If you remix, transform, or build upon the material, you must        %
%      distribute your contributions under the same license as the original.             %
%    * No additional restrictions — You may not apply legal terms or technological       %
%      measures that legally restrict others from doing anything the license permits.    %
%                                                                                        %
% More details: http://creativecommons.org/licenses/by-nc-sa/4.0/                        %
%                                                                                        %
% Authors:                                                                               %
%    * Fabian Gilson                                                                     %
%    * Nicolas Genon                                                                     %
% Contributors:                                                                          %
%    * Maxime Cauz                                                                       %
%    * Maxime André                                                                      %
%                                                                                        %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                        DOCUMENT TYPE                                   %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{umemoir}[2023 UNamur Memoir class]
\LoadClass[openright,twoside]{memoir}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                           LAYOUT                                       %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%% Croping %%%

\newif\if@crop \@cropfalse
\DeclareOption{crop}{\@croptrue}
\ProcessOptions
\DisemulatePackage{crop} 
\setstocksize{297mm}{210mm}
\settrimmedsize{240mm}{160mm}{*}
\if@crop \usepackage[cam,a4,center]{crop}
\else \usepackage[off,a4,center]{crop} \fi

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                           PACKAGES                                     %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%% Layout %%%

\usepackage[driver=none,left=1.8cm,top=2cm,right=2.2cm,bottom=2cm]{geometry} % https://ctan.org/pkg/geometry / Margins
%\usepackage{afterpage}
\usepackage{fancyhdr}

% %%% Positionning %%%

\usepackage{atbegshi} % https://www.ctan.org/pkg/atbegshi / Positionning 
\usepackage{rotating} % https://ctan.org/pkg/rotating / Object rotation
\usepackage[export]{adjustbox}
\usepackage{float}

% %%% Languages %%%

\usepackage[utf8]{inputenc} % https://ctan.org/pkg/inputenc / Encodings
\usepackage[T1]{fontenc} % https://ctan.org/pkg/fontenc / Font encodings
\usepackage[english]{babel} % https://ctan.org/pkg/babel / English

% %%% Symbols %%%

\usepackage{soul} % https://ctan.org/pkg/soul / Special characters
\usepackage{fourier} % https://ctan.org/pkg/fourier / Special characters
\usepackage{microtype} % https://www.ctan.org/pkg/microtype / Typography
\usepackage{textcomp} % https://ctan.org/pkg/textcomp / Special characters

% Other symbols: https://tug.ctan.org/info/symbols/comprehensive/symbols-a4.pdf

% %%% Maths %%%

\usepackage{calc} % https://ctan.org/pkg/calc / Symbols
\usepackage[fleqn]{mathtools} % https://www.ctan.org/pkg/mathtools / Symbols
\usepackage{amssymb} % https://milde.users.sourceforge.net/LUCR/Math/mathpackages/amssymb-symbols.pdf / Symbols
\usepackage{amsmath} % Equation environment.
\usepackage{amsfonts}

% %%% Text %%%

%\usepackage{multicol} % Text in multi colmuns.
\usepackage{lipsum}

% %%% Utilities %%%

%\usepackage{etoolbox} % https://ctan.org/pkg/etoolbox / Toolbox

% %%% Fonts %%%

\usepackage{anyfontsize} % https://www.ctan.org/pkg/anyfontsize / Fonts
\usepackage{pifont} % https://www.ctan.org/pkg/pifont / Fonts

% %%% Citation %%%

\usepackage{epigraph} % https://www.ctan.org/pkg/epigraph / Citation
%\usepackage{cite} % https://www.ctan.org/pkg/cite / Citation

% %%% Bibliography %%%

\usepackage{bibentry} \nobibliography* % https://www.ctan.org/pkg/bibentry / Bibliography
\usepackage[square, sort]{natbib} % https://ctan.org/pkg/natbib / Bibliography

% %%% Title %%%

\usepackage{titlesec} % https://www.ctan.org/pkg/titlesec / Title modification
\usepackage{titletoc} % https://www.ctan.org/pkg/titletoc / Title in table of content

% %%% Colors %%%

\usepackage[table]{xcolor} % https://ctan.org/pkg/xcolor / Colors
\usepackage{color} % https://ctan.org/pkg/color / Colors
\usepackage{colortbl} % https://ctan.org/pkg/colortbl / Colors

% %%% Table %%%

\usepackage{tabularx} % https://ctan.org/pkg/tabularx / Table
\usepackage{multirow} % https://ctan.org/pkg/multirow / Stylished table
\usepackage{array} % https://ctan.org/pkg/array / Table
\usepackage{longtable} % https://www.ctan.org/pkg/longtable / Table on multiples pages
\usepackage{tabu} %  https://www.ctan.org/pkg/tabu / Table
\usepackage{booktabs}

% %%% Boxes %%%

\usepackage[skins,most]{tcolorbox} % https://ctan.org/pkg/tcolorbox / Coloured text boxes

% %%% Graphics %%%

\usepackage{graphicx} % https://ctan.org/pkg/graphicx / Graphics
\usepackage{tikz} % https://www.ctan.org/pkg/pgf / Graphics creation 
\usetikzlibrary{arrows,automata}
\usepackage{subcaption} % https://www.ctan.org/pkg/subcaption / Subcaptions of figures
\usepackage{svg} % https://ctan.org/pkg/svg / Images SVG.

% %%% Enumerations %%%

\usepackage{paralist} % https://ctan.org/pkg/paralist / Enumerations
\usepackage{enumitem} % https://ctan.org/pkg/enumitem / Enumerations items
\usepackage{mdwlist} % https://ctan.org/pkg/mdwlist / Enumeration with textual long labels

% %%% Source code %%%

\usepackage{listings} % https://ctan.org/pkg/listings / Source code listing

% %%% Algorithms %%%

%\usepackage[linesnumbered]{algorithm2e} % https://www.ctan.org/pkg/algorithm2e / Algorithm
\usepackage{algorithm} % Algorithm
\usepackage{algpseudocode} % Pseudocode

% %%% PDF %%%

\usepackage{pdfpages} % https://ctan.org/pkg/pdfpages / PDF
\usepackage{pdflscape} % https://ctan.org/pkg/pdflscape / Page orientation

% %%% Index %%%

\usepackage{imakeidx} % https://www.ctan.org/pkg/imakeidx / Index

% %%% Links %%%

\usepackage{url} % https://www.ctan.org/pkg/url / URL
\usepackage[hidelinks]{hyperref} % https://ctan.org/pkg/hyperref / Hyperlinks

% %%% Glossary %%%

\usepackage[toc, acronym, section=chapter]{glossaries} % https://www.ctan.org/pkg/glossaries / Glossary
\usepackage{glossaries-extra}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                           COLORS                                       %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\definecolor{black}{HTML}{000000}
\definecolor{unamur_green}{HTML}{69be28} % UNamur green
\definecolor{unamur_fac_info_blue}{HTML}{293071} % Fac Info blue
\definecolor{unamur_fac_philo_blue}{HTML}{005C87} % Fac Philo blue
\definecolor{unamur_fac_med_blue}{HTML}{00A9C8} % Fac Med blue
\definecolor{unamur_fac_emcp_blue}{HTML}{008D9A} % Fac EMCP (management) blue
\definecolor{unamur_fac_law_purple}{HTML}{522C81} % Fac Droit purple
\definecolor{unamur_fac_science_purple}{HTML}{80368A} % Fac science purple
\definecolor{unamur_grey}{HTML}{616365} % UNamur grey

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                       TITLE PAGE                                       %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%% Title configuration %%%

\pretitle{\Huge\bfseries}
\posttitle{\par\vskip1em{\normalfont\normalsize\scshape \par\vfill}}
\predate{\vfill\large}

\newlength{\titlebaseline}
\def\TitlePartList{}
\newcommand*\TitlePart[1]{\listadd\TitlePartList{#1}}
\newcommand*\PrintTitleParts{
    \setlength{\titlebaseline}{.5\baselineskip}
    \def\do##1{
        {\textcolor{unamur_fac_info_blue}{\Huge ##1}}\\[\titlebaseline]
        \setlength{\titlebaseline}{.5\baselineskip}
    }
    \dolistloop{\TitlePartList}
}

% %%% Jury / Committee configuration %%%

\newcounter{jurycnt}
\setcounter{jurycnt}{0}
\newcounter{jurycntcurrent}
\setcounter{jurycntcurrent}{0}
\def\JuryList{}
\newcommand*\Jury[3]{\stepcounter{jurycnt} \listadd\JuryList{\normalcolor\normalsize #1\\ \color{unamur_grey}{\small{#2}}\\\color{unamur_grey}{\small\textit{#3}}\\}}
\newcommand*\PrintJuries{
    \def\do##1{
        \stepcounter{jurycntcurrent}
        ##1
        \ifnumcomp
            {\value{jurycntcurrent}}{=}{\value{jurycnt}}
            {\vfill}
            {\vspace*{.1cm}}
    }
    \dolistloop{\JuryList}
}

% %%% Supervisors configuration %%%

%\newcommand*\Supervisors[1]{\renewcommand*\Supervisors{#1}}

% %%% Research center configuration %%%

\newcommand*\CenterResearch[1]{\renewcommand*\CenterResearch{#1}}

% %%% Layout %%%

\newcommand*{\MyTitlePage}{
    \begingroup
        \thispagestyle{empty}
        \raggedleft
        \vspace*{\baselineskip}

        \PrintTitleParts
        {\textcolor{unamur_fac_info_blue}{\Huge }}\\[.1\baselineskip]
        \textcolor{unamur_fac_info_blue}{\rule{\linewidth}{.05cm}}\\[.5\baselineskip]

        {\large \@author }\\[0.05\textheight]

        {\small \textbf{\textit{Committee}}\\ \vspace{.0cm}
        \PrintJuries}\par
        \vspace*{0.5cm}

        {\small A thesis submitted in partial fulfilment of the requirements for the\\degree of Doctor of Philosophy in the subject of Computer Science}\par
        
        %\vspace*{.5cm}
        %{\small Supervised by \Supervisors}\par
        % \vfill

        \vspace*{.5cm}
        Month Year\par % TODO
        
        {\begin{flushleft}
        \begin{minipage}[c]{.79\textwidth}
        \hfill
        \raggedleft\small
        \color{unamur_grey}{University of Namur \\ \vspace*{.5\baselineskip} \CenterResearch}
        \end{minipage}
        \begin{minipage}[c]{.20\textwidth}
        \hfill\includegraphics[width=1.5cm]{figures/logo_computer_science_faculty.png}
        \end{minipage}
        \end{flushleft}}
    \endgroup
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                            PART                                        %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\aliaspagestyle{part}{empty} % Removes page number on part pages

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                          CHAPTER                                       %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\newlength\dlf@normtxtw
\setlength\dlf@normtxtw{\textwidth}
\def\myhelvetfont{\def\sfdefault{mdput}}
\newsavebox{\feline@chapter}
\newcommand\feline@chapter@marker[1][4cm]{
\sbox\feline@chapter{
\resizebox{!}{#1}{\fboxsep=1pt
\colorbox{unamur_fac_info_blue}{\color{white}\bfseries\thechapter} % Blue box chapter number
%\colorbox{white}{\color{black}\bfseries\thechapter} % White box chapter number
}}%
\rotatebox{90}{
\resizebox{
\heightof{\usebox{\feline@chapter}}+\depthof{\usebox{\feline@chapter}}}
{!}{\scshape\so\@chapapp}}\quad
\raisebox{\depthof{\usebox{\feline@chapter}}}{\usebox{\feline@chapter}}
}
\newcommand\feline@chm[1][4cm]{
\sbox\feline@chapter{\feline@chapter@marker[#1]}
\makebox[0pt][l]{% aka \rlap
\makebox[1cm][r]{\usebox\feline@chapter}
}}
\makechapterstyle{daleif1}{
\renewcommand\chapnamefont{\normalfont\Large\raggedleft\so}
\renewcommand\chaptitlefont{\normalfont\huge\bfseries\scshape}
\renewcommand\chapternamenum{}
\renewcommand\printchaptername{}
\renewcommand\printchapternum{\null\hfill\feline@chm[2.5cm]\par}
\renewcommand\afterchapternum{\par\vskip\midchapskip}
\renewcommand\printchaptertitle[1]{\chaptitlefont\raggedleft ##1\par}
}
\chapterstyle{daleif1}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
% %%%                                   Text boxes                                   %%% %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

\newcommand{\mybox}[4]{
    \begin{figure}[H]
        \centering
    \resizebox{\textwidth}{!}{%  
    \begin{tikzpicture}
        \node[anchor=text,text width=\columnwidth-0.2cm, draw, rounded corners, line width=0.5pt, fill=#3, inner sep=3mm] (big) {\\#4};
        \node[draw, rounded corners, line width=0.5pt, fill=#2, anchor=west, xshift=4mm, ,scale=1.1] (small) at (big.north west) {\text{  }\bfseries{\textbf{\textcolor{white}{#1}}}\text{  }};
    \end{tikzpicture}
    }%
    \end{figure}
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                    HEADER AND FOOTER                                   %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% Header

\makeheadfootruleprefix{ruled}{\color{black}}{\color{black}}  % Header line color
\makeheadrule {ruled}{\textwidth}{\normalrulethickness} % Header line
\makeoddhead {ruled} {} {} {\small\itshape\rightmark} % Header format odd page

% Page footer

%\makeevenfoot{ruled}{\colorbox{unamur_fac_info_blue}{\makebox[1.5em]{\strut\textcolor{white}{\thepage}}}}{}{} % Blue box even page number
%\makeoddfoot{ruled}{}{}{\colorbox{unamur_fac_info_blue}{\makebox[1.5em]{\strut\textcolor{white}{\thepage}}}} % Blue box odd page number
\makeevenfoot{ruled}{\colorbox{white}{\makebox[1.5em]{\strut\textcolor{black}{\thepage}}}}{}{} % Black even page number
\makeoddfoot{ruled}{}{}{\colorbox{white}{\makebox[1.5em]{\strut\textcolor{black}{\thepage}}}} % Black odd page number

% Chapter page footer

\makepagestyle{rulednohead}
\makeheadfootruleprefix{rulednohead}{}{\color{black}}
%\makeevenfoot{rulednohead}{\colorbox{unamur_fac_info_blue}{\makebox[1.5em]{\strut\textcolor{white}{\thepage}}}}{}{} % Blue even page number
%\makeoddfoot{rulednohead}{}{}{\colorbox{unamur_fac_info_blue}{\makebox[1.5em]{\strut\textcolor{white}{\thepage}}}} % Blue odd page number
\makeevenfoot{rulednohead}{\colorbox{white}{\makebox[1.5em]{\strut\textcolor{black}{\thepage}}}}{}{} % Black even page number
\makeoddfoot{rulednohead}{}{}{\colorbox{white}{\makebox[1.5em]{\strut\textcolor{black}{\thepage}}}} % Black odd page number

\makepsmarks {ruled}{
	\nouppercaseheads
	\createmark {chapter} {both} {shownumber}{\@chapapp\ }{. \ }
	\createmark {section} {right}{shownumber}{} {. \space }
	\createmark {subsection} {right}{shownumber}{} {. \space }
	%\createmark {subsubsection}{right}{shownumber}{} {. \space }
	\createplainmark {toc} {both} {\contentsname}
	\createplainmark {lof} {both} {\listfigurename}
	\createplainmark {lot} {both} {\listtablename}
	\createplainmark {bib} {both} {\bibname}
	\createplainmark {index} {both} {\indexname}
	\createplainmark {glossary} {both} {\glossaryname}
}

\setsecnumdepth{subsection}
\maxtocdepth{subsection}
\pagestyle{ruled}
\aliaspagestyle{chapter}{rulednohead}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                          STYLES                                        %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%% List %%%

\setlist{nolistsep}
\renewenvironment{description}{%
\begin{itemize}[font=\bfseries\color{black}]%
%\addtolength{\leftmargin}{5cm}
\addtolength{\itemindent}{2cm}
%
}
{%
\end{itemize}%
}

% %%% Citation %%%

%\setcitestyle{open={[},close={]},semicolon,aysep={ },yysep={,}}
%\let\cite\citep

% %%% Emph %%%

\makeatletter
\DeclareRobustCommand{\em}{%
  \@nomath\em \if b\expandafter\@car\f@series\@nil
  \normalfont \else \bfseries \color{black} \fi}
\makeatother


% %%% Links %%%

\urlstyle{same}
\hypersetup{
    colorlinks = true,
    linkcolor = black,
    urlcolor = black,
    citecolor= black
}

% %%% tt family %%%

\renewcommand*\ttdefault{txtt}

% %%% Graphics %%%

\graphicspath{{../}{figures/}}

% %%% Enumerations %%%

\newcommand{\sbt}{\,\begin{picture}(-1,1)(-1,-3)\circle*{4}\end{picture}\ }
\renewcommand{\labelitemi}{${\color{black}\sbt}$}
\renewcommand{\labelenumi}{\color{black}(\theenumi)}

\setdefaultenum{(i)}{(a)}{}{}

% %%% Subsections %%%

\titleformat{\subsubsection}
{\color{black}\normalfont\bfseries}
{\color{black}\thesection}{}{}

% %%% Listings %%%

\lstset{float,
showspaces=false,
showtabs=false,
breaklines=true,
showstringspaces=false,
tabsize=2,
basicstyle=\footnotesize,
numbers=left,
xleftmargin=3em,
frame=lines,
framexleftmargin=2.5em,
escapeinside={(*@}{@*)}}

% %%% Acronyms %%%

\preto\chapter{\glsresetall}

\setabbreviationstyle[acronym]{long-short}

% %%% Boxes %%%

\tcbset{textmarker/.style={
    enhanced,
    parbox=false,boxrule=0mm,boxsep=0mm,arc=0mm,
    outer arc=0mm,left=5mm,right=5mm,top=5pt,bottom=5pt,
    toptitle=1mm,bottomtitle=1mm}}

\newtcolorbox{highlightsBox}{textmarker,
    borderline west={6pt}{0pt}{black},
    colback=unamur_grey!5!white}

\newcommand{\highlights}[1]{\begin{highlightsBox} \textbf{Highlights}\newline #1 \end{highlightsBox}}
        

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %
%                                        COMMANDS                                        %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %

% %%% Todo %%%

\newcommand{\todo}[1]{\textcolor{red}{\textbf{To do: #1}\\}}

% %%% Listings %%%

\renewcommand*{\lstlistlistingname}{List of Listings}

% %%% Abbreviations %%%

\renewcommand\textservicemark{\unskip\nobreak\textsuperscript{\scshape{\scriptsize SM}}\allowbreak\thinspace\ignorespaces}

\newcommand{\eg}{\textit{e.g.,~}}
\newcommand{\Eg}{\textit{E.g.,~}}
\newcommand{\ie}{\textit{i.e.,~}}
\newcommand{\Ie}{\textit{I.e.,~}}
\newcommand{\etal}{\textit{et al.}\xspace}
\newcommand{\etc}{\textit{etc.}\xspace}
\newcommand{\wrt}{\textit{w.r.t.~}}
\newcommand{\cfr}{\textit{cfr.~}}
\newcommand{\Cfr}{\textit{Cfr.~}}
\newcommand{\viz}{\textit{viz.~}}
\newcommand{\aka}{\textit{a.k.a.~}}
\newcommand{\cf}{\textit{cf.~}}
\newcommand{\Cf}{\textit{Cf.~}}

% %%% Hyphenations %%%

\babelhyphenation[english]{ma-x-ime} % Custom global hyphenation.

\uchyph=0 % Avoid hyphenation of words beginning with a capital letter.

% %%% Presse Universitaire Namur (PUN) %%%

\newcommand{\pun}{
\null
\vspace{10cm}

% %%% Copyright %%%

\noindent \copyright \ Presses universitaires de Namur \& First Name LAST NAME \\ % TODO
Rempart de la Vierge, 13\\
B - 5000 Namur (Belgique)\\
\\
Toute reproduction d'un extrait quelconque de ce livre, hors des limites restrictives prévues par la loi, par quelque procédé que ce soit, et notamment par photocopie ou scanner, est strictement interdite pour tous pays.\\
\\
Any copy, partial or complete, of this book, apart beyond restrictive limits stated by the law, by any way, notably printed or electronic copy, is formally forbidden for all countries.\\
\\
Imprimé en Belgique\\
ISBN :  % TODO \\
Dépôt légal: % TODO
}

% %%% Citation %%%

\newcommand{\thesisCitation}[2]{
    
\vspace*{3.5cm}

\begin{flushright}{\slshape    
  ``#1''\\ \medskip
 \textbf{#2}}
\end{flushright}
}
