\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Receipt}[2023/04/25 Writes out a receipt.]

\LoadClass[11pt, a5paper]{article}
\RequirePackage{libertine, graphicx, float}
%\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\graphicspath{ {./} }


\linespread{0.975}

\newcommand{\Header}[2]{
    \title{\Huge\textbf{\textsc{#1}}}\date{#2}\author{Owed to Dhairya Rathi Bhandari}\maketitle
}

\renewcommand{\arraystretch}{1.5}
\setlength{\arrayrulewidth}{1.5pt}
\pagenumbering{gobble}
