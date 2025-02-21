\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}

\DeclareOption{10pt}{\PassOptionsToClass{10pt}{book}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{book}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{book}}
\ExecuteOptions{10pt}
\ProcessOptions\relax

\LoadClass[oneside]{book}

\RequirePackage{titlesec}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mathtools}
\RequirePackage[breakable,skins]{tcolorbox}
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

\newcommand{\Page}[1]{\subsection*{Page #1}}
\newcommand{\Topic}[1]{\subsubsection*{#1}}

\newtcolorbox{quotebox}[1][] {
    enhanced jigsaw,
    colback=gray!10,      % Background color
    colframe=gray!100,    % Border color
    sharp corners,        % Sharp corners for modern look
    leftrule=2mm,
    rightrule=0mm,
    toprule=0mm,
    bottomrule=0mm,
    breakable,            % Allow box to break across pages
}

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