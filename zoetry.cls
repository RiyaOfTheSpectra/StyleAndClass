\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zoetry}[2021/10/10 Configures poetry styles]

\LoadClass[a4paper, 12pt]{article}
\RequirePackage{imfellEnglish}
\RequirePackage{fontspec}
\RequirePackage{geometry}

\linespread{0.78}
\newcommand{\LeArtur}{Dhairya Rathi Bhandari}

\newcommand{\Title}[1]{\title{\Huge{\textsc{#1}}} \author{\small{\LeArtur}} \date{} \maketitle}
\pagenumbering{gobble}
\setlength{\parindent}{0pt}
