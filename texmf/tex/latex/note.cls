\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}

\LoadClass[oneside]{amsbook}

\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mathtools}
\RequirePackage{extarrows}
\RequirePackage{IEEEtrantools}
\RequirePackage{hyperref}

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

\newcounter{exercise}[section]
\newcommand\Ex{
    \if@noskipsec \leavevmode \fi
    \par
    \refstepcounter{exercise}
    \textbf{\thesection.\arabic{exercise}.}
}

% adjust for the spacing influence of \left and \right on normal-size pairs
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}

\newcommand{\brackets}[1]{\left[#1\right]}

\newcommand{\set}[1]{\left\{#1\right\}}

\renewcommand{\emptyset}{\varnothing}

\newcommand{\reals}{\mathbb{R}}
\newcommand{\complexes}{\mathbb{C}}