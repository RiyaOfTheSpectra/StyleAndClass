\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Screenplay}[2023/10/09 A simply screenplay standard.]

\LoadClass{article}
\RequirePackage{fontspec, geometry, ifthen}

%\usepackage{courier}
%\renewcommand*\familydefault{\ttdefault}

\setmainfont{IBM Plex Mono Italic}

\geometry{
    lmargin = 1.5in,
    rmargin = 1in,
    vmargin = 1in
}

\newcommand{\SceneHeader}[2]{
    % Signature: \SceneHeader{slug}{description}
    #1

    #2
}

\linespread{1.25}
\setlength{\parindent}{0pt}


% This is bad. I shouldn’t do this. This is bad.
% It works!!! Sort of.

\newcounter{Dialogues}
\setcounter{Dialogues}{1}

\newcommand{\dialogue}[2][]{
    \ifthenelse{\equal{#1}{}}{}{\hspace{1.5in}(#1)

    }

    \arabic{Dialogues}\hspace{1.5in} #2
    \stepcounter{Dialogues}

}
\newcommand{\speaker}[1]{
    \hspace{2.2in}#1

    \dialogue
}
\newcommand{\Dialogue}{\speaker}
