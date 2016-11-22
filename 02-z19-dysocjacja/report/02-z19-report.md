---
title: |
  Wyznaczanie energii dysocjacji molekuły jodu I_2$
author: Michał Liszcz, pod kierunkiem prof. dr hab. Jarosława Koperskiego
date: 12.10.2016

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

abstract: |
  Abstrakt.
---

# Wstęp

# Opis eksperymentu

# Wyniki i dyskusja

# Podsumowanie

# Bibliografia

* <https://en.wikipedia.org/wiki/Bond-dissociation_energy>
* <http://www.sciencedirect.com/science/article/pii/0009261473801897>
* <http://www.colby.edu/chemistry/PChem/lab/DissEI2Br2.pdf>


* $D_0 = 151\,\mathrm{kJ/mol}$
* $D_0 = 1.57\,\mathrm{eV}$
* $D_0 = 12440.1\,\mathrm{cm}^{-1}$

\setlength{\parindent}{0cm}
<div id="refs"></div>

\newpage
\appendix

# Opracowanie danych pomiarowych

## Krzywa dyspersji

$$ \lambda = a\,n + b $$ {#eq:}

```
Final set of parameters            Asymptotic Standard Error
=======================            ==========================
a               = 0.00844744       +/- 2.38e-06     (0.02817%)
b               = 416.084          +/- 0.03685      (0.008857%)
```

\begin{figure}
\centering
\input{plots/out/kalibracja.tex}
\label{fig:}
\caption{Krzywa dyspersji.}
\end{figure}

\begin{figure}
\centering
\input{plots/out/halogen.tex}
\label{fig:}
\caption{Widmo lampy halogenowej.}
\end{figure}

# Analiza niepewności pomiarowych
