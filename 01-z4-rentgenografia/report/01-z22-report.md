---
title: |
  Jakościowa analiza składu monet jednogroszowych \
  z lat 1992-2013 metodą
  fluorescencji rentgenowskiej
date:

bibliography: references.bib
csl: ieee.csl

documentclass: article
lang: pl-PL

figureTitle: Rysunek
tableTitle: Tabela
listingTitle: Listing

figPrefix: ['rys.', 'rys.']
tblPrefix: ['tabela', 'tabele']

geometry: a4paper, tmargin=3cm, bmargin=3cm, lmargin=3cm, rmargin=3cm

header-includes:
  - \usepackage[pdftex]{graphicx}
  - \usepackage{hyperref}
  - \usepackage{float}
  - \usepackage{gensymb}
  - \usepackage{bm}
  - \setlength{\parindent}{3em}
  - \graphicspath{{./plots/},{./}}
  - \usepackage{authblk}
  - \author[1]{M. Kujda}
  - \author[1]{\underline{M. Liszcz}}
  - \author[1]{M. Morawiec}
  - \author[1]{O. Prośniak}
  - \affil[1]{\footnotesize{II Pracownia Fizyczna; Wydział Fizyki, Astronomii i Informatyki Stosowanej Uniwersytetu Jagiellońskiego}}
  - \renewcommand\Authands{ i }
  - \usepackage{titling}
  - \setlength{\droptitle}{-5em}

---

**Wstęp**
Przeprowadzony został eksperyment blah blah blah.

* analiza jakościowa punktowa


rok emisji | waga [g] | $\mathrm{Cu}_{K\alpha}$ | $\mathrm{Cu}_{K\beta}$ | $\mathrm{Zn}_{K\alpha}$ | $\mathrm{Zn}_{K\beta}$ | $\mathrm{Mn}_{K\alpha}$ | $\mathrm{Mn}_{K\beta}$
----------|--------|------|------|------|------|------|------
1992 | 1.6427 | 1382 | 192 | 641 | 55 | 50 | 20
1998 | 1.6173 | 1311 | 182 | 663 | 59 | 56 | 20
2003 | 1.6320 | 1147 | 160 | 599 | 54 | 42 | 15
2013 | 1.6421 | 1179 | 165 | 600 | 54 | 40 | 17

Table: Przybliżona liczba kwantów promieniowania emitowanych w ciągu sekundy
  dla każdego z przejść elektronowych w substancjach składowych monet
  jednogroszowych emitowanych w latach 1992 - 2013.

\begin{figure}[H]
\centering
\input{plots/out/moneta03.tex}
\label{fig:moneta03}
\caption{Spektrogram monety jednogroszowej bitej w 2003 roku. Na rysunku
  oprócz składu fazowego monety (Cu, Zn, Mn) widać wkład od lampy rodowej.
  Zliczenia uznane za linię $\mathrm{Mn}_{K\beta}$ mogą być również pikiem
  ucieczki od linii $\mathrm{Cu}_{K\alpha}$. Zaobserwowany został też pik
  sumy od linii $\mathrm{Cu}_{K\alpha}$ (energia $\approx 16\,\mathrm{keV}$,
  poza rysunkiem).}
\end{figure}
