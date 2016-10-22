---
title: |
  Badanie struktur oraz ilościowa analiza substancji krystalicznych \
  metodą dyfrakcji promieni X
author: Michał Liszcz, pod kierunkiem dr Teresy Jaworskiej-Gołąb
date: 19.10.2016

documentclass: article
lang: pl-PL

geometry: a4paper, margin=6em
header-includes:
  - \usepackage[pdftex]{graphicx}
  - \usepackage{hyperref}
  - \usepackage{float}
  - \usepackage{bm}
  - \setlength{\parindent}{3em}

keywords:
  - dyfrakcja
  - NaCl

abstract: |
  Tutaj będzie abstrakt.
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

# Wyniki i dyskusja

# Podsumowanie

\newpage
\appendix

# Opracowanie wyników pomiarów

# Analiza niepewnośći pomiarowych
