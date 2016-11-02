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
  - \setlength{\droptitle}{-7em}

---

\thispagestyle{empty}

Zbadany został skład fazowy monet jednogroszowych emitowanych w latach
1992-2013. Cztery próbki monet, z lat 1992, 1998, 2003 i 2013 poddano analizie
spektrometrem rentgenowskim PANalytical MiniPal, z lampą rodową i detektorem
półprzewodnikowym. Przed rozpoczęciem pomiarów spektrometr przeszedł
automatyczną kalibrację.
Pomiary wykonywane były z prądem i napięciem lampy wynoszącymi odpowiednio
$14\,\mathrm{kV}$ i $51\,\mathrm{\mu A}$. Pojedynczy pomiar trwał 300 sekund.
W trakcie jego trwania próbka była obracana. Bezpośredniemu promieniowaniu
poddawana była strona awersu (z orzełkiem). W pomiarach nie były stosowane
żadne filtry. Po zakończeniu pomiarów monety zostały zważone.

Spektrogramy poddano analizie jakościowej, która potwierdziła taki sam skład
fazowy wszystkich monet: miedź, cynk i mangan. Jest to zgodne z podawanymi
przez NBP informacjami o wykonaniu monet z *mosiądzu manganowego*[^nbp-monety].
Spektrogram próbki z 2003 roku przedstawia [@Fig:moneta03]. Na wszystkich
spektrogramach dobrze widoczne były linie emisyjne $K\alpha$ i $K\beta$
wymienionych wcześniej pierwiastków. Zaobserwować można również piki ucieczki
i sumy od linii $\mathrm{Cu}_{K\alpha}$. W Tabeli 1 porównane zostały ilości
zliczeń fotonów emitowanych przy poszczególnych przejściach. Na przestrzeni lat
ich stosunek zmieniał się nieznacznie w obrębie każdej próbki i nie jest
widoczny tutaj żaden trend. Widać natomiast że monety z 2003 i 2013 wyemitowały
około 10% mniej fotonów niż monety z lat 1992 i 1998.

[^nbp-monety]: <http://www.nbp.pl/home.aspx?f=/banknoty_i_monety/monety_obiegowe.html>

\begin{figure}[H]
\centering
\input{plots/out/moneta03.tex}
\label{fig:moneta03}
\caption{Spektrogram monety jednogroszowej z 2003 roku. Na rysunku
  oprócz składu fazowego monety (Cu, Zn, Mn) widać wkład od lampy rodowej.
  Zliczenia uznane za linię $\mathrm{Mn}_{K\beta}$ mogą być również pikiem
  ucieczki od linii $\mathrm{Cu}_{K\alpha}$.}
\end{figure}

rok emisji | waga [g] | $\mathrm{Cu}_{K\alpha}$ | $\mathrm{Cu}_{K\beta}$ | $\mathrm{Zn}_{K\alpha}$ | $\mathrm{Zn}_{K\beta}$ | $\mathrm{Mn}_{K\alpha}$ | $\mathrm{Mn}_{K\beta}$
----------|--------|------|------|------|------|------|------
1992 | 1.6427 | 1382 | 192 | 641 | 55 | 50 | 20
1998 | 1.6173 | 1311 | 182 | 663 | 59 | 56 | 20
2003 | 1.6320 | 1147 | 160 | 599 | 54 | 42 | 15
2013 | 1.6421 | 1179 | 165 | 600 | 54 | 40 | 17

Table: Przybliżona liczba kwantów promieniowania emitowanych w ciągu sekundy
  dla każdego z przejść elektronowych w substancjach składowych monet
  jednogroszowych z lat 1992 - 2013.

\newpage
\appendix

# Dodatki

Zostały przeprowadzone pomiary dla dodatkowych próbek: drutu o nieznanym
składzie chemicznym, sproszkowanych skorupek białych jajek kurzych
oraz sproszkowanych niebieskich skorupek jajek kury Araukana. Pomiary każdej
z próbek trwały 300 sekund i były wykonywane bez użycia filtrów.
Na wszystkich spektrogramach widać było promieniowanie pochodzące z przejść
$\mathrm{Rh}_{K\alpha}$ i $\mathrm{Rh}_{K\beta}$.

## Nieznany drut

Analiza wykazała że drut w całości składał się z kobaltu. Wyraźnie dało się
zidentyfikować linie $\mathrm{Co}_{K\alpha}$ i $\mathrm{Co}_{K\beta}$. Pomiar
przeprowadzony był przy parametrach lampy $14\,\mathrm{kV}$ i
$341\,\mathrm{\mu A}$

## Skorupki jajek białych i niebieskich

Nałożenie na siebie spektrogramów sproszkowanych skorupek jajek białych i
niebieskich nie wykazało żadnych różnic. Różnica w kolorze próbek powinna być
również widoczna na spektrogramach. Próbki muszą się więc różnić składem
pierwiastków lekkich (lżejszych od Na), których nie może wykryć spektrometr
wykorzystany w eksperymencie. Spektrogram próbki skorupek białych jajek
przedstawia rys [@Fig:jajka-biale]. Analiza wykazała że skorupki składają
się głównie z wapnia.
Pomiar przeprowadzony był przy parametrach lampy $14\,\mathrm{kV}$ i
$88\,\mathrm{\mu A}$

\begin{figure}[H]
\centering
\input{plots/out/biala_0p33.tex}
\label{fig:biala_0p33}
\caption{Spektrogram sproszkowanych skorupek jajek białych. Zidentyfikowano
  linie $\mathrm{Ca}_{K\alpha}$, $\mathrm{Ca}_{K\beta}$,
  $\mathrm{S}_{K\alpha}$ (lub pik ucieczki $\mathrm{Ca}_{K\beta}$
  $2.31\,\mathrm{keV}$), pik ucieczki $\mathrm{Ca}_{K\alpha}$
  ($1.92\,\mathrm{keV}$) oraz pik sumy
  $\mathrm{Ca}_{K\alpha}$ ($7.40\,\mathrm{keV}$, niewidoczny na rysunku).}
\end{figure}

## Wpływ rozmiaru próbki na spektrogram
Zwiększając rozmiar próbki sproszkowanych skorupek białych jajek kurzych (a
więc zwiększając grubość powierzchni na jaką pada promieniowanie) zaobserwowano
niewielkie różnice w ilości zliczeń energii tych samych linii. Dla próbki o
trzykrotnie większej grubości było około 3.5% więcej zliczeń dla linii
$\mathrm{Ca}_{K\alpha}$ i około 3.0% więcej dla linii
$\mathrm{Ca}_{K\beta}$.
