---
# title: |
#   Badanie struktur oraz ilościowa analiza substancji krystalicznych \
#   metodą dyfrakcji promieni X
# subtitle: |
#   II Pracownia Fizyczna
# author: Michał Liszcz
# date: 18.03.2016

geometry: a4paper, margin=6em
header-includes:
  - \usepackage[pdftex]{graphicx}
  - \usepackage{hyperref}
  - \usepackage{float}
  - \setlength{\abovecaptionskip}{2pt plus 3pt minus 2pt}
  - \pagenumbering{gobble}
  - \renewcommand{\figurename}{Rysunek}
---

\begin{figure}[H]
\centering

\includegraphics[height=0.41\textheight]{{output/wykres_01_06.txt.svg}.pdf}
\caption{Profil natężenia wiązki laserowej}

\vspace{2.0em}

\includegraphics[height=0.41\textheight]{{output/wykres_02.dat.svg}.pdf}
\caption{Przebieg zmiany fazy i sygnału w modulacji MSK}

\end{figure}

\vspace{2.0em}

\small{
Michał Liszcz, Fizyka teoretyczna,
\href{mailto:liszcz.michal@gmail.com}{liszcz.michal@gmail.com}

wykonane w Gnuplot-cie 5.0p5, źródło: \href{https://github.com/mliszcz/uj-2pf/tree/master/00-tutorial}{https://github.com/mliszcz/uj-2pf/tree/master/00-tutorial}
}
