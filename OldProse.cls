\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{OldProse}[2021/10/10 Gives a modern prose style.]

\LoadClass[12pt, a4paper]{article}
\RequirePackage{imfellEnglish, titlesec}
\RequirePackage[T1]{fontenc}

\linespread{0.7}
\setlength{\parskip}{4pt}
\setlength{\parindent}{12pt}
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1in}

\newcommand{\Title}[3]{\title{\Huge{\textsc{#1}}}\author{#2}\date{#3}\maketitle}
\titleformat{\section}[hang]{\huge\bfseries\scshape}{}{-8pt}{}[\vspace{-8pt}]
\titleformat{\subsection}[hang]{\bfseries\scshape}{}{-8pt}{}[\vspace{-8pt}]
