---
title: |
  Badanie struktur oraz ilościowa analiza substancji krystalicznych \
  metodą dyfrakcji promieni X
subtitle: |
  II Pracownia Fizyczna
author: Michał Liszcz
date: 18.03.2016

geometry: margin=6em
header-includes:
    - \usepackage{mathrsfs}
    - \usepackage{amssymb}
    - \usepackage{empheq}
    - \usepackage{braket}
    - \usepackage{empheq}
    - \usepackage{graphicx}
    - \usepackage{float}
    - \usepackage{color}
    - \usepackage{listings}
    - \usepackage{gensymb}
    - \usepackage{caption}
    - \usepackage{subcaption}
---

# 2016-10-12

## Opis eksperymentu i metoda pomiarów

W eksperymencie badałem strukturę krystaliczną próbki NaCl z wykorzystaniem
dyfraktometru rentgenowskiego z lampą Cu, pracującego w geometrii
Bragga-Brentano.

Sproszkowaną próbkę umieściłem w kuwecie. Powierzchnia próbki była gładka
i równomierna. Kuwetę umieściłem w dyfraktometrze i zbudowałem następujący
układ dla **wiązki pierwotnej**:

* układ szczelin Solera 0.04 rad,
* szczelina wejściowa 1.4$\degree$
* maska 10 mm
* szczelina przeciwrozproszeniowa 1/2$\degree$.

Oraz układ dla **wiązki wyjściowej**:

* układ szczelin Solera 0.04 rad
* filtr niklowy

W dużym zakresie kąta $\theta$ lampa oświetlała próbkę. Odbita wiązka trafiała
do detektora. Na podstawie odczytów z detektora program akwizycyjny generował
dyfraktogramy.

Pierwszy pomiar testowy został wykonany przez współeksperymentatora. W tym
pomiarze nie był użyty filtr Niklowy, więc w dyfraktogramie widoczne były
refleksy linii $\beta$. Pomiar testowy miał na celu zawężenie analizowanego
zakresu kąta $\theta$, z około [??, 150] do [??, 130].

Drugi pomiar został wykonany przeze mnie, z większą dokładnością - zmniejszyłem
krok i wydłużyłem czas pomiaru w jednym kroku.

Otrzymany dyfraktogram poddam analizie w celu określenia stałej
sieci krystalicznej.

## Parametry układu

W eksperymencie wykorzystałem dyfraktometr PANalytical EMPYREAN
oraz detektor PIXcel3D. Lampa zasilana była prądem 40 kV i 40 m. Promień
goniometru w tym układzie wynosił 240 mm.

## Wyniki pomiarów

* [combined.png](../data/10-12/combined.png)
* [combined-zoom.png](../data/10-12/combined-zoom.png)
* [combined-zoom-snr.png](../data/10-12/combined-zoom-snr.png)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC](../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.rd](../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.rd)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.UDF](../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.UDF)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.xrdml](../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.xrdml)
* [multi-samples-hi.png](../data/10-12/multi-samples-hi.png)


## Użyte oprogramowanie

* program do akwizycji danych producenta urządzenia
* HighScore
* DataViewer
* Full Prof Suite, WinPlotr - wskaźnikowanie hkl

## Dodatkowe notatki

* tylko niewielka częśc mocy lampy generuje promieniowanie,
* *centra barw* - dowiedzieć się więcej,
* w dużych kątach $\theta$ próbka może być mniej doskonała, refleksy pokrywają
  się z lepszymi próbkami,
* bezpieczny minimalny $\theta$ to 15 $\degree$. Inaczej wiązka może uszkodzić
detektor,
* analiza schodka - *krawędź absorbcji* z użytym filtrem Niklowym,
* czytać skrypt o niepewnościach standardowych A i B,
* doczytać o strukturze helitu,
* refleksy niskokątowe są czułe na powierzchnię próbki, ale używane do
wskaźnikowania,
* *preferencja orientacji* - objawia się przez różne natężenia w różnych
  próbkach dla tych samych refleksów
