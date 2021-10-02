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

\theoremstyle{lemma}
\newtheorem*{lemma*}{Lemma}

\theoremstyle{remark}
\newtheorem*{remark*}{Remark}

\newcommand{\ideal}[1]{\mathfrak{#1}}
\newcommand{\ilmod}{\mathop{}\mathrm{mod}\ }

% adjust for the spacing influence of \left and \right on normal-size pairs
\let\originalleft\left
\let\originalright\right
\renewcommand{\left}{\mathopen{}\mathclose\bgroup\originalleft}
\renewcommand{\right}{\aftergroup\egroup\originalright}
