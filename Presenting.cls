\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Presenting}[2021/10/10 My Presentation Package]

\LoadClass[12pt]{article}
\RequirePackage{fontspec, titlesec, geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{graphicx, float, tikz, enumitem, tabularx}
\setmainfont{IBM Plex Sans}[ UprightFont = *-Light ]
\setsansfont[
    Path = /home/santiagorivera/.local/share/fonts/Cooper/ttf/ ,
    UprightFont = *-Regular ,
    BoldFont = *-SemiBold ,
    ItalicFont = *-MediumItalic ,
    Style = Swash
]{Cooper}
\linespread{1.2}

%Define some basic colours
\definecolor{Background}{HTML}{FFF2CC}
\definecolor{Accent}{HTML}{0D4569}
%\newcommand{\Rule}{{\color{Accent}\rule{\textwidth}{2pt}}}
\newcommand{\Rule}[1][2pt]{
    \begin{tikzpicture}[scale=.5]
        \draw[line width = #1, line cap = round, Accent] (-\textwidth, 0) -- (\textwidth, 0);
    \end{tikzpicture}
    \vspace{-2em}
}


%Fix the page size to a respectable slide size.
\geometry{
    paperheight=5.55in,
    paperwidth=7.4in,
    hmargin=1in,
    vmargin=0.5in,
    textwidth=5.6in
}

%Spacing corrections
\setlength{\parskip}{0in}
\setlength{\parindent}{0in}
\setlist{leftmargin=2em, rightmargin=2em, labelwidth=0.7em, itemsep=0.425em, parsep=0em}

\pagenumbering{gobble}

%Configure bullet points
\newcommand{\SetFirstPointer}[1]{
    \renewcommand{\labelitemi}{#1}
}
\newcommand{\SetSecondPointer}[1]{
    \renewcommand{\labelitemii}{#1}
}
\SetFirstPointer{\sffamily\small--}

%Title Slide (needs more decor)
\newenvironment{TitleSlide}{\begin{center}{\Rule[3]}\vfill}{\vspace{2em}\\\vfill{\Rule[3]}\end{center}}
\newcommand{\Title}[1]{{\Huge{\sffamily#1}\vspace{1em}\\}}
\newcommand{\Authors}[1]{#1\\}

%Index
\renewcommand{\contentsname}{\sffamily{\huge{Summary}}\\\Rule\vfill}
\newcommand{\IndexSlide}{\newpage\tableofcontents\vspace{2em}\Rule\vspace{2em}}

%Slide formatting
\titleformat{\section}{\huge\itshape\sffamily}{}{}{}
\renewcommand{\thesection}{}
\newenvironment{Slide}[1]{\newpage\section{#1}\Rule\vfill\begin{itemize}}{\end{itemize}\vspace{1em}\Rule\vspace{2em}}
\newenvironment{Slide*}[1]{\newpage\section*{#1}\Rule\vfill\begin{itemize}}{\end{itemize}\vspace{1em}\Rule\vspace{2em}}

\newenvironment{NoFillSlide}[1]{\newpage\section{#1}\Rule\begin{itemize}}{\end{itemize}\Rule\vspace{2em}}
\newenvironment{NoFillSlide*}[1]{\newpage\section*{#1}\Rule\begin{itemize}}{\end{itemize}\Rule\vspace{2em}}

\newenvironment{NumSlide}[1]{\newpage\section{#1}\Rule\vfill\begin{enumerate}}{\end{enumerate}\vspace{1em}\Rule\vspace{2em}}
\newenvironment{NumSlide*}[1]{\newpage\section*{#1}\Rule\vfill\begin{enumerate}}{\end{enumerate}\vspace{1em}\Rule\vspace{2em}}

\newenvironment{PlainSlide}[1]{\newpage\section{#1}\Rule\vfill}{\vspace{1em}\Rule\vspace{2em}}
\newenvironment{PlainSlide*}[1]{\newpage\section*{#1}\Rule\vfill}{\vspace{1em}\Rule\vspace{2em}}

\newenvironment{PictSlide}[1]{\newpage\section{#1}\Rule\vspace{2em}\begin{center}}{\end{center}\vspace{1em}\Rule\vspace{2em}}
\newenvironment{PictSlide*}[1]{\newpage\section*{#1}\Rule\vspace{1em}\begin{center}}{\end{center}\vspace{1em}\Rule\vspace{2em}}

\newenvironment{BlankSlide}{\newpage}{}
\newenvironment{BlankRuleSlide}{\newpage\Rule}{\Rule\vspace{2em}}
\newenvironment{PlainSlide**}{\newpage\Rule\vfill}{\vspace{1em}\Rule\vspace{2em}}
\newenvironment{DescSlide}[1]{\newpage\section{#1}\Rule\vfill\begin{description}}{\end{description}\vspace{1em}\Rule\vspace{2em}}
\newenvironment{DescSlide*}[1]{\newpage\section*{#1}\Rule\vfill\begin{description}}{\end{description}\vspace{1em}\Rule\vspace{2em}}
