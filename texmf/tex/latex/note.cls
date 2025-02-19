\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}

\DeclareOption{10pt}{\PassOptionsToClass{10pt}{amsbook}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{amsbook}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{amsbook}}
\ExecuteOptions{10pt}
\ProcessOptions\relax

\LoadClass[oneside]{amsbook}

\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mathtools}
\RequirePackage{mdframed}
\RequirePackage{extarrows}
\RequirePackage{IEEEtrantools}
\RequirePackage[hidelinks]{hyperref}

\allowdisplaybreaks

\theoremstyle{plain}
\newtheorem*{proposition*}{Proposition}
\newtheorem*{theorem*}{Theorem}
\newtheorem*{lemma*}{Lemma}
\newtheorem*{example*}{Example}

\theoremstyle{remark}
\newtheorem*{remark*}{Remark}

\newcommand{\ideal}[1]{\mathfrak{#1}}
\newcommand{\ilmod}{\mathop{}\mathrm{mod}\ }

\newcommand{\page}[1]{page #1}

\newcommand{\Page}[1]{\par\noindent{\bfseries Page #1}\par}
\newcommand{\Topic}[1]{\subsubsection*{#1}}

\mdfsetup{skipabove=\topskip,skipbelow=\topskip}
\mdfdefinestyle{leftbar}{
    innerleftmargin=2em,
    innerrightmargin=2em,
    innertopmargin=1em,
    innerbottommargin=1em,
    linewidth=3pt,
    leftline=true,
    topline=false,
    rightline=false,
    bottomline=false,
    linecolor=gray,
    backgroundcolor=gray!6,
}
\newenvironment*{quotebar}{\begin{mdframed}[style=leftbar]}{\end{mdframed}}

% adjust for the spacing influence of \left and \right on normal-size pairs
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}

\newcommand{\listwithclosingbracket}[2]{
    #2\@ifnextchar{\bgroup}{,\listwithclosingbracket{#1}}{\right#1}
}

\newcommand{\prn}[1]{\left(#1\right)}
\newcommand{\set}{\left\{\listwithclosingbracket{\}}}
\newcommand{\setbuilder}[2]{\set{#1 \mid #2}}
\newcommand{\abs}[1]{\left\lvert#1\right\rvert}

\newcommand{\polynomials}[1]{#1\left[\listwithclosingbracket{]}}

\renewcommand{\emptyset}{\varnothing}

\newcommand{\reals}{\mathbb{R}}
\newcommand{\complexes}{\mathbb{C}}