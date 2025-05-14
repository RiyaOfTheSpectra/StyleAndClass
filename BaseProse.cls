\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BaseProse}[2021/10/10 Gives a modern prose style.]

\LoadClass[11pt, a4paper]{article}
\RequirePackage{
    %libertine,
    prettyref,
	titlesec,
	float,
	geometry,
	hyperref,
    booktabs,
	tabularx,
    caption,
    subcaption,
    graphics
}
\RequirePackage[inline]{enumitem}

\linespread{0.975}
\setlength{\parindent}{12pt}
\setlength{\parskip}{1.5pt}
\setlength{\itemsep}{0pt}
\setlist{
    topsep=0pt,
    listparindent=\parindent,
    labelindent=0pt,
    parsep=0pt,
    itemsep=0.5pt,
}
\setlist[description]{format=\bfseries\scshape}
\geometry{margin=0.8in}

\newrefformat{fig}{Fig \ref{#1}}
\newrefformat{sec}{Sec \ref{#1}}
\newrefformat{sub}{Sec \ref{#1}}
\newrefformat{eq}{Eq \ref{#1}}

\newcommand{\Title}[3]{\title{\Huge{\textbf{\textsc{#1}}}}\author{\textsc{#2}}\date{\textsc{#3}}\maketitle}
\titleformat{\section}[hang]{\Large\bfseries\scshape}{}{0pt}{}[\vspace{-4pt}]
\titleformat{\subsection}[hang]{\large\bfseries\scshape}{}{0pt}{}[\vspace{-4pt}]
\titleformat{\subsubsection}[hang]{\bfseries\scshape}{}{0pt}{\hfill}[\vspace{-4pt}]
\newcommand{\St}{\textsuperscript{st}}
\newcommand{\Nd}{\textsuperscript{nd}}
\newcommand{\Th}{\textsuperscript{th}}
\newcommand{\etal}{\textit{et al.}}

\newenvironment{myDesc}[1][0.7\textwidth]{
    \renewcommand{\arraystretch}{1.15}
    %\begin{table}[H]
        \centering
        \begin{tabular}{ r p{#1} }
}{
        \end{tabular}
    %\end{table}
}
\newcommand{\DescItem}[2]{
    \textsc{#1} & {#2}\\
}
