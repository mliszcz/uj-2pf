---
title: |
  Badanie struktur oraz ilościowa analiza substancji krystalicznych \
  metodą dyfrakcji promieni X
author: Michał Liszcz, pod kierunkiem dr Teresy Jaworskiej-Gołąb
date: 12.10.2016

bibliography: references.bib
csl: ieee.csl

documentclass: article
lang: pl-PL

geometry: a4paper, margin=6em
header-includes:
  - \usepackage[pdftex]{graphicx}
  - \usepackage{hyperref}
  - \usepackage{float}
  - \usepackage{gensymb}
  - \usepackage{bm}
  - \setlength{\parindent}{3em}

keywords:
  - dyfrakcja
  - NaCl

abstract: |
  W ćwiczeniu przeprowadzona została analiza próbek substancji krystalicznych
  metodą dyfrakcji promieni rentgenowskich. Z wykorzystaniem równania Bragga
  próbka NaCl została wywskaźnikowana i wyznaczona została dla niej stała sieci
  krysta licznej wynosząca $a = 0.564(xx)\,\mathrm{nm}$. Wskaźnikowanie
  potwierdziło zakładany model sieci krystalicznej fcc a wyznaczona stała
  sieci jest zgodna z wartościami tablicowymi.
  Dodatkowo została zbadany został dyfraktogram próbki wielofazowej z którego
  wyodrębiono wszystkie refleksy próbek wzorcowych i potwierdzono jej skład.
---

# Wstęp

Celem eksperymentu była analiza obrazu dyfrakcyjnego próbki jednofazowej,
przeprowadzenie jego wskaźnikowania oraz wyznaczenie stałej sieci
krystalicznej. Analizie została poddana również próbka wielofazowa.

Zgodnie z klasyczną definicją kryształ to ciało stałe o periodycznej budowie
w którym występuje atomowy porządek dalekiego zasięgu. Strukturę krystaliczną
definiuje sieć punktów (sieć krystaliczna) oraz baza (grupa atomów związana z
każdym węzłem sieci). Sieć krystaliczna to zbiór punktów określonych przez
*wektory translacji sieciowej* $\bm{a}_i$ dające taki sam obraz sieci z punktów
$\bm{r}$ i $\bm{r}' = \bm{r} + u^i\bm{a}_i$, gdzie współrzędne $u^i$ są
liczbami całkowitymi. Jeżeli takie translacje generują całą sieć, to nazywamy
ją *siecią Bravais*. Długości wektorów translacji to *stałe sieci
krystalicznej* określające odległości między *komórkami elementarnymi*
(równoległościanami rozpiętymi na tych wektorach).

Jednym z rodzajów trójwymiarowej sieci Bravais jest sieć regularna (ang.
*cubic*), gdzie wektory translacji sieciowej są ortogonalne i mają równą
długość. Wśród układów regularnych rozróżniamy trzy: prymitywny (ang.
*simple*), przestrzennie centrowany (ang. *body-centered*) i ściennie
centrowany (ang. *face-centered*). Przykładem minerału krystalizującego w
strukturze face-centered cubic jest halit (NaCl).

Określanie płaszczyzn w kryształach dokonuje się z użyciem trzech liczb, $h$,
$k$ i $l$. Płaszczyzna $(hkl)$ przecina osie krystalograficzne w punktach
$\bm{a}_1/h$, $\bm{a}_2/k$ i $\bm{a}_3/l$. Jeżeli to konieczne, wskaźniki $h$,
$k$ i $l$ należy wymnożyć przez taką liczbę by były jak najmniejszymi liczbami
całkowitymi. Jeżeli prosta jest równoległa do jednej z osii, odpowiadający jej
wskaźnik wynosi $0$. Zestaw tych trzech liczb nazywany jest *wskaźnikami
Millera*.

Eksperymentalnej analizy sieci krystalicznej dokonuje się często z
wykorzystaniem zjawiska *dyfrakcji promieniowania* na strukturze krystalicznej.
Kryształy dają dyskretny obraz dyfrakcyjny z maksimami pochodzącymi od różnych
rodzin płaszczyzn krystalograficznych.
Promieniowanie padające na kryształ pod kątem $\theta$ w niewielkiej części
przenika w głąb kryształu i jest odbijane od kolejnych warstw struktury
krystalicznej. Dla warstw kryształu odległych o $d$ różnica dróg przebytych
przez odbite od nich promienie wynosi $2d \sin \theta$. Wzmocnienie odbitego
promieniowania następuje kiedy różnica dróg optycznych jest równa całkowitej
wielokrotności fali promieniowania padającego. Powoduje to pojawianie się
lokalnych maksimów na obrazie dyfrakcyjnym. Warunek ten można zapisać w postaci
równania Bragga-Wulfa:

$$ 2d \sin \theta = n \lambda $$ {#eq:bragg}

Odległość $d$ w rodzinie płaszczyzn $(hkl)$ jest zależna od typu komórki
elementarnej [ ]. Dla sieci regularnej warunek łączący $d$ ze wskaźnikami
$h$, $k$ i $l$ to:

$$ \frac{1}{d^2} = \frac{h^2 + k^2 + l^2}{a^2} $$ {#eq:dinhkl}

gdzie $a$ jest stałą sieci krystalicznej. Łącząc oba warunki otrzymujemy
równanie które pozwala dla danego maksimum dyfrakcyjnego wyznaczyć rodzinę
płaszczyzn sieciowych na których nastąpiło odbicie:

$$ \sin^2 \theta = \frac{n^2\lambda^2}{4a^2}(h^2 + k^2 + l^2) $$ {#eq:quadratic}

W przypadku próbek wielofazowych, gdzie zmieszane są różne substancje
krystaliczne, na dyfraktogramie widać maksima pochodzące od wszystkich
substancji składowych. Dysponując bazą wzorców można na tej podstawie określić
skład próbki wielofazowej.

Z równania Bragga widać ograniczenie na wyrażenie $n\lambda/2d$ przez
maksymalną wartość funkcji $\sin\theta$. Z tego względu do analizy struktury
krystalicznej wykorzystuje się promieniowanie o bardzo małej długości fali,
rzędu $0.1$ nm. Często jest to promieniowanie rentgenowskie, pochodzące od
zderzeń przyspieszonych elektronów z tarczą anody w lampie rentgenowskiej.
Elektrony blisko jądra zostają wybite a następnie powracają na niższe poziomy
energetyczne emitując *promieniowanie charakterystyczne*. W widmie
promieniowania dla lampy o anodzie miedzianej (Cu) można obserwować
promieniowanie linii $K_{\alpha1}$, $K_{\alpha2}$ oraz $K_{\beta}$, wynikające
z przejścia elektronów z poziomów $L$ i $M$ na poziom $K$.

# Opis eksperymentu

W eksperymencie badałem próbki cztery próbki,
P1: *NaCl* (sproszkowana, ucierana),
P2: *KCl* (sproszkowana),
P3: *Si* (wzorzec PANalytical),
P4: *Salvita* (sproszkowana, ucierana, mieszanina 75% NaCl i 25% KCl),
P5: *Salvita z krzemem* (sproszkowana).

Pomiary przeprowadziłem z wykorzystaniem dyfraktometru rentgenowskiego
PANalytical EMPYREAN oraz detektora PIXcel3D. Dyfraktometr pracował w geometrii
pionowej (Bragga-Brentano). Promieniowanie rentgenowskie pochodziło z lampy Cu.
Lampa zasilana była prądem $40$ mA z napięciem $40$ kV. Promień
goniometru w tym układzie wynosił 240 mm.
W dyfraktometrze zbudowałem następujący układ dla *wiązki pierwotnej*:
układ szczelin Solera $0.04$ rad, szczelina wejściowa $1/4\degree$, maska
$10$ mm i szczelina przeciwrozproszeniowa $1/2\degree$. *Wiązka odbita*
przechodziła przez układ szczelin Solera $0.04$ rad i filtr niklowy.
Zadaniem filtra niklowego była absorpcja refleksów pochodzących od lini
$K_{\beta}$ lampy Cu.

W dużym zakresie kąta $\theta$ lampa oświetlała próbkę. Odbita wiązka trafiała
do detektora. Na podstawie odczytów z detektora program akwizycyjny generował
dyfraktogramy. Pierwszy pomiar testowy dla próbki P1 został wykonany bez filtra
niklowego. Podczas tego pomiaru kąt $\theta$ zmieniał się w zakresie od
$5\degree$ do $150\degree$. Porównanie dyfraktogramów otrzymanych z filtrem
i bez niego pozwoliło zidentyfikować refleksy $K_{\beta}$. Kolejne, właściwe
już pomiary, wykonywane były w zakresie od $20\degree$ do $137\degree$,
z krokiem $0.013\degree$ i czasem pomiaru wynoszącym $0.235$ s na krok.

# Wyniki i dyskusja

Dla próbki P1 przeprowadziłem wskaźnikowanie i wyznaczyłem stałą sieci
krystalicznej. Dla wielofazowej próbki P5 dokonałem rozkładu dyfraktogramu na
wzorcowe próbki P1, P2 i P3.

## Stała sieciowa próbki NaCl

Przyjęta w obliczeniach długość falii linii $K_{\alpha1}$ miedzi to
$\lambda=0.154056\,\mathrm{nm}$.

TODO:

* uzupełnić tekst
* wyrzucić z tabelki $a$ (wyliczyć z regresji liniowej)
* rachunek niepewności + zaokrąglenie wyników
* *systematic absences*, *allowed hkl list for fcc* [@lufaso2013]

$2\theta\,[\degree]$ | $h^2+k^2+l^2$ | $(hkl)$ | $a\,[\mathrm{nm}]$
---------------------|---------------|---------|-------------------
27.3473              | 3             | $(111)$ | 0.5643879589
31.6868              | 4             | $(200)$ | 0.564289042
45.4307              | 8             | $(220)$ | 0.5642011867
53.8489              | 11            | $(311)$ | 0.5641881253
56.4538              | 12            | $(222)$ | 0.5641709494
66.2128              | 16            | $(400)$ | 0.5641056767
75.2684              | 20            | $(420)$ | 0.5641492758
83.9582              | 24            | $(422)$ | 0.5641821667
101.1383             | 32            | $(440)$ | 0.5641388541
110.0194             | 36            | $(442)$ | 0.5641360838
119.4398             | 40            | $(620)$ | 0.5641319576
129.8396             | 44            | $(622)$ | 0.5641352502

Table: Wskaźnikowanie refleksów dyfraktogramu próbki P1 w punktach $2\theta$.
Rozkłady $(hkl)$ podane są z dokładnością do permutacji. {#tbl:wskaznikowanie}

TODO: wykresy:

* dyfraktogram NaCl + inset dla dużych kątów + krzywa ekstrapolacyjna
* regresja liniowa dopasowania $a$

## Analiza próbki polifazowej

TODO:

* wykres z nałożonymi dyfraktogramami

# Podsumowanie

# Bibliografia

<div id="refs"></div>

\newpage
\appendix

# Opracowanie wyników pomiarów

# Analiza niepewnośći pomiarowych
