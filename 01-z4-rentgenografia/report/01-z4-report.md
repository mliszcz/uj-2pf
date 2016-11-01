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

geometry: a4paper, tmargin=3cm, bmargin=3cm, lmargin=3cm, rmargin=3cm

header-includes:
  - \usepackage[pdftex]{graphicx}
  - \usepackage{hyperref}
  - \usepackage{float}
  - \usepackage{gensymb}
  - \usepackage{bm}
  - \setlength{\parindent}{3em}
  - \graphicspath{{./plots/},{./}}

keywords:
  - dyfrakcja
  - NaCl

abstract: |
  W ćwiczeniu przeprowadzona została analiza próbek substancji krystalicznych
  metodą dyfrakcji promieni rentgenowskich. Z wykorzystaniem równania Bragga
  próbka NaCl została wywskaźnikowana i wyznaczona została dla niej stała sieci
  krysta licznej wynosząca $a = 5.641320(37)\,\mathrm{\AA}$. Wskaźnikowanie
  potwierdziło zakładany model sieci krystalicznej fcc a wyznaczona stała
  sieci jest zgodna z wartościami tablicowymi.
  Dodatkowo została zbadany został dyfraktogram próbki wielofazowej z którego
  wyodrębiono wszystkie refleksy próbek wzorcowych i potwierdzono jej skład.
---

# Wstęp

// TODO napisac tutaj o dyskretnym obrazie dyfrakcyjnym

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
Dyfrakcję promieniowania na krysztale można analizować trzema metodami,
zaproponowanymi kolejno przez Lauego [], Ewalda [] i Braggów []. W tej pracy
wykorzystane zostało podejście Braggów.
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
rzędu $1$ \AA. Często jest to promieniowanie rentgenowskie, pochodzące od
zderzeń przyspieszonych elektronów z tarczą anody w lampie rentgenowskiej.
Elektrony blisko jądra zostają wybite a następnie powracają na niższe poziomy
energetyczne emitując *promieniowanie charakterystyczne*. W widmie
promieniowania dla lampy o anodzie miedzianej (Cu) można obserwować
promieniowanie linii $K_{\alpha1}$, $K_{\alpha2}$ oraz $K_{\beta}$, wynikające
z przejścia elektronów z poziomów $L$ i $M$ na poziom $K$.

Celem eksperymentu była analiza obrazu dyfrakcyjnego próbki jednofazowej,
przeprowadzenie jego wskaźnikowania oraz wyznaczenie stałej sieci
krystalicznej. Analizie została poddana również próbka wielofazowa.

# Opis eksperymentu

W eksperymencie badałem próbki cztery próbki,
P1: *NaCl* (sproszkowana, ucierana),
P2: *KCl* (sproszkowana),
P3: *Si* (wzorzec PANalytical),
P4: *Salvita* (sproszkowana, ucierana, mieszanina 75% NaCl i 25% KCl),
P5: *Salvita z krzemem* (sproszkowana).

Pomiary przeprowadziłem z wykorzystaniem dyfraktometru rentgenowskiego
PANalytical EMPYREAN oraz detektora PIXcel3D. Dyfraktometr pracował w geometrii
Bragga-Brentano. Promieniowanie rentgenowskie pochodziło z lampy Cu.
Lampa zasilana była prądem $40$ mA z napięciem $40$ kV. Promień
goniometru w tym układzie wynosił 240 mm.
W dyfraktometrze zbudowałem następujący układ dla *wiązki pierwotnej*:
układ szczelin Solera $0.04$ rad, szczelina wejściowa $1/4\degree$, maska
$10$ mm i szczelina przeciwrozproszeniowa $1/2\degree$. *Wiązka odbita*
przechodziła przez układ szczelin Solera $0.04$ rad i filtr niklowy.
Zadaniem filtra niklowego była absorpcja refleksów pochodzących od lini
$K_{\beta}$ lampy Cu.

Pierwszy pomiar testowy dla próbki P1 został wykonany bez filtra
niklowego. Podczas tego pomiaru kąt $2\theta$ zmieniał się w zakresie od
$5\degree$ do $150\degree$. Porównanie dyfraktogramów otrzymanych z filtrem
i bez niego pozwoliło zidentyfikować refleksy $K_{\beta}$. Kolejne, właściwe
już pomiary, wykonywane były w zakresie od $20\degree$ do $137\degree$.
Dyfraktometr pracował w trybie ciągłym z szybkością obrotu odpowiadającą
krokowi $0.013\degree$, w którym pomiar trwa $0.235$ s. Po zakończeniu
pomiaru na każdej z próbek można było obserwować powstałe centra barwne []
będące wynikiem oddziaływania promieniowania rentgenowskiego z materiałem
próbki.

# Wyniki i dyskusja

Dla próbki P1 przeprowadziłem wskaźnikowanie i wyznaczyłem stałą sieci
krystalicznej. Dla wielofazowej próbki P5 dokonałem rozkładu dyfraktogramu na
wzorcowe próbki P1, P2 i P3.

## Stała sieciowa i wskaźnikowanie próbki NaCl

Przy użyciu programu WinPLOTR [] odczytałem położenia maksimów dyfrakcyjnych.
Do poszczególnych maksimów program pozwalał na dopasowanie krzywej
ekstrapolacyjnej. Dygraktogram NaCl wraz z dopasowaniem dla jednego z
refleksów przedstawia [].

\begin{figure}
\centering
\input{plots/out/nacl-10-12.tex}
\caption{Dyfraktogram NaCl z krzywą ekstrapolacyjną dla jednego z refleksów.
  Dla czytelności rysunku pominięty został najbardziej intensywny refleks
  dla $2\theta \approx 27\degree$.}

\end{figure}

Dyfraktogram wywskaźnikowałem dobierając taki dzielnik, który dla wszystkich
wartości $\sin^2 \theta$ dawał liczbę całkowitą. Zgodnie z równaniem (3)
liczba ta powinna być równa $h^2+k^2+l^2$. Dzięki zastosowaniu filtra
niklowego w widmie nie było zauważalnych refleksów od linii $K_{\beta}$ miedzi.
W ten sposób udało się wywskaźnikować wszystkie refleksy dyfraktogramu.
Wartość $h^2+k^2+l^2$ dla każdego z refleksów dawała jednoznaczny rozkład na
wskaźniki $h$, $k$ i $l$ (z dokładnością do ich permutacji). Wszystkie
wskaźniki refleksów były albo parzyste albo nieparzyste, co jest zgodne z
regułą wygaszeń dla sieci *fcc* [@lufaso2013]. **NaCl krystalizuje więc w
strukturze regularnej powierzchniowo centrowanej**.

Znając wartości kąta $\theta$ i wskaźników, przy pomocy równania (3)
wyznaczyłem wartości stałych sieciowych $a$. Wyniki wskaźnikowania i
wyznaczone stałe sieciowe przedstawia tabela [].
Przyjęta w obliczeniach długość falii linii $K_{\alpha1}$ miedzi to
$\lambda=1.54056\,\mathrm{\AA}$ [^note-ka-lambda].
Trzy refleksy, dla kątów $2\theta$ wynoszących odpowiednio około $73.0\degree$,
$90.5\degree$ i $107.5\degree$, które ze względu na bardzo małe natężenie nie
zostały użyte w dalszych obliczeniach, również spełniały równanie Bragga.
Odpowiadają one brakującym zestawom wskaźników: $331$, $511$ i $531$.

[^note-ka-lambda]: Stała podana przez program WinPlotr.

$2\theta\,[\degree]$ | $hkl$       | $a\,[\mathrm{\AA}]$
---------------------|-------------|-------------------
27.34730(30)         |    $111$    |    5.64388(76)
31.68680(10)         |    $200$    |    5.64289(65)
45.43070(30)         |    $220$    |    5.64201(44)
53.8489(23)          |    $311$    |    5.64188(43)
56.45330(70)         |    $222$    |    5.64176(35)
66.21260(60)         |    $400$    |    5.64107(29)
75.26800(50)         |    $420$    |    5.64152(24)
83.95820(80)         |    $422$    |    5.64182(21)
101.1383(36)         |    $440$    |    5.64139(21)
110.0194(17)         |    $442$    |    5.64136(14)
119.4398(18)         |    $620$    |    5.64132(12)
129.8396(19)         |    $622$    |    5.641353(96)

Table: Wskaźnikowanie refleksów dyfraktogramu próbki P1 w punktach $2\theta$. {#tbl:wskaznikowanie}

W celu wyznaczenia dokładnej wartości stałej sieciowej $a_0$, do zależności
stałych $a$ od wartośc funkcji Nelsona-Rileya [] dla $\theta$,
dopasowałem prostą regresji liniowej. Prosta przedstawiona jest na rys [].
Stały parametr dopasowania to
wartość $a_0$. \textbf{Otrzymałem $a = 5.641320(37)$ \AA}. Wartości podawane w
różnych bazach materiałów różnią się między sobą:
$5.6404(1)$ \AA [^note-nacl-mindat],
$5.64154(6)$ \AA [^note-nacl-ruff01],
$5.6429(1)$ \AA [^note-nacl-ruff01]. Wartość stałej sieci zależy od wielu
czynników, między innymi temperatury panującej w trakcie eksperymentu.
Otrzymany wynik potwierdza jednak że stała sieciowa badanej próbki jest równa
stałej sieciowej halitu.

\begin{figure}[H]
\centering
\input{plots/out/nacl-analyzed.tex}
\caption{Zależność stałej struktury krystalicznej $a$ od wartości funkcji
  Nelsona-Rileya dla kąta $\theta$. Prosta została dopasowana do czterech
  punktów o największej wartości kąta $\theta$.}

\end{figure}

[^note-nacl-ruff01]: http://rruff.info/halite/display=default/R070534
[^note-nacl-ruff02]: http://rruff.info/halite/display=default/R070586
[^note-nacl-mindat]: http://www.mindat.org/min-1804.html

## Analiza próbki polifazowej

Dokonałem analizy jakościowej obrazu dyfrakcyjnego wielofazowej próbki P5.
Porównując go z dyfraktogramami próbek wzorcowych P1, P2 i P3 udało się
zidentyfikować wszystkie refleksy próbki P5 jako pochodzące od poszczególnych
jej składników. Złożenie dyfraktogramów przedstawia rys [@Fig:multiphase].

\begin{figure}
\centering
\input{plots/out/multiphase-salvita-si-hiangle.tex}
\label{fig:multiphase-salvita-si-hiangle}
\caption{Dyfraktogram próbki wielofazowej P5 (u góry) porównany z
  dyfraktogramami próbek P1, P2 i P3 (u dołu). Dla każdego z refleksów próbki
  P5 widać odpowiadający refleks jednej z próbek wzorcowych. Dla zwiększenia
  czytelności rysunku pokazane są dyfraktogramy tylko dla $\theta>40\degree$
  a natężenia refleksów dla próbek P1, P2 i P3 zostały przeskalowane i
  przesunięte.}

\end{figure}

\begin{figure}
\centering
\input{plots/out/multiphase-salvita-si-loangle.tex}
\caption{Dyfraktogram próbki wielofazowej P5 (u góry) porównany z
  dyfraktogramami próbek P1, P2 i P3 (u dołu) dla $\theta<40\degree$.}

\end{figure}

Natężenia odpowiadających sobie refleksów w próbce wielofazowej i próbkach
wzorcowych różnią się między sobą. Jest to związane z różną zawartością
poszczególnych substancji w próbce wielofazowej i występującą preferencją
orientacji w samych próbkacj jednofazowych.

# Podsumowanie

Przeprowadzone pomiary i analiza wykazały że NaCl krystalizuje w strukturze
regularnej powierzchniowo centrowanej. W obserwowanym dyfraktogramie udało
się wywskaźnikować wszystkie zauważalne refleksy, co potwierdziło skuteczność
zastosowania filtra niklowego w połączeniu z lampą z anodą Cu. Wszystkie
refleksy spełniają reguły wygaszeń oczekiwane dla struktury fcc. Eksperyment
potwierdził, że dla dużych wartości kąta $2\theta$ (większych od $100\degree$)
zależność stałej struktury krystalicznej $a$ od wartości funkcji Nelsona-Rileya
kąta $\theta$ jest liniowa. Pozwoliło to otrzymać dokładną wartość stałej
sieci, zbliżoną do wartości podawanych w bazach danych.

Dzięki jakościowej analizie próbki wielofazowej udało się określić jej skład,
poprzez rozseparowanie refleksów na refleksy pochodzące od poszczególnych
składników (pozyskane z próbek wzorcowych).

# Bibliografia

<div id="refs"></div>

\newpage
\appendix

# Opracowanie wyników pomiarów

W celu wywskaźnikowania dyfraktogramu i wyznaczenia stałej sieciowej wykonałem
opisane dalej kroki.

## Wskaźnikowanie

Z dyfraktogramu próbki NaCl odczytałem przy użyciu programu WinPLOTR
położenia ($2\theta$) refleksów. Zgodnie z równaniem Bragga, dla wszystkich
refleksów powinno być spełnione:

$$ \sin^2 \theta = \frac{\lambda^2}{4a^2}(h^2 + k^2 + l^2) $$ {#eq:simple-bragg}

co można zapisać jako:

$$ \sin^2 \theta = \gamma C, \qquad \gamma \equiv \frac{\lambda^2}{4a^2} \in \mathbb{R},
  \qquad C \equiv (h^2 + k^2 + l^2) \in \mathbb{N} $$

Umieściłem wartości $\sin^2 \theta$ wszystkich refleksów w arkuszu
kalkulacyjnym. Dla pierwszego z refleksów (o najmniejszym kącie $\theta_1$)
dzieliłem wartość $\sin^2 \theta_1$ przez kolejne $C_1=1,2,3,...$, otrzymując
hipotetyczną wartość $\gamma$. Dla kolejnych wartości $\gamma$ obserwowałem w
dodatkowej kolumnie wartości $C_n$ dla pozostałych refleksów. Właściwa wartość
$\gamma$ to taka, dla której wartości $C_n$ wszystkich refleksów są
całkowite (lub bardzo bliskie całkowitych). Odpowiednią wartością $C_1$ dla
pierwszego refleksu okazała się liczba $3$. Przyjmując $\gamma =
\sin^2 \theta_1 / C_1$ wyliczyłem pozostałe wartości $C_n$. Następnie dla
każdego $C_n = (h_n^2 + k_n^2 + l_n^2)$ odgadłem odpowiedni rozkład na $h_n$,
$k_n$ i $l_n$. Wynik wskaźnikowania przedstawia tabela [] we właściwej części
sprawozdania.

## Wyliczenie stałej $a_0$

Istnieje wiele zależności opisujących względny błąd wyznaczenia odległości
międzypłaszczyznowej $d \propto a$ na podstawie równania Bragga. W analizie
wyników skorzystałem z funkcji Nelsona-Rileya, wyrażającej ten błąd jako:

$$ \frac{\Delta d}{d}
  = K\left(\frac{\cos^2\theta}{\sin\theta}+\frac{\cos^2\theta}{\theta}\right)
  = K\,\mathrm{NR}(\theta),
  \qquad K \in \mathbb{R} $$ {#eq:nelson-riley}

Powyższa zależność jest prawdziwa dla dużych kątów $\theta > 50\degree$.
Korzystając z tego że $d \propto a$, można dalej zapisać:

$$ \frac{\Delta a}{a}
  = \frac{a - a_0}{a}
  = K\,\mathrm{NR}(\theta)
  \qquad \Rightarrow \qquad
  a = a_0 K \, \mathrm{NR}(\theta) + a_0 $$ {#eq:nelson-riley}

Gdzie $a_0$ jest dokładną wartością stałej sieci.

Dla czterech refleksów z największymi kątami $\theta$ wyliczyłem wartość
stałej $a$ z równania (4) oraz wartość funkcji $\mathrm{NR}(\theta)$. Metodą
regresji liniowej do tych danych dopasowałem prostą. Stały współczynnik
dopasowania to szukana wartość $a_0$. Dopasowana prosta przedstawiona jest na
[]. Wynik dopasowania podany jest w sprawozdaniu.

# Ilościowa analiza niepewności pomiarowych

Wyznaczając położenia $2\theta$ refleksów program WinPLOTR podawał również
niepewność statystyczną $u_A(2\theta)$ tego położenia. Przyjąłem więc
niepewnośći statystyczne odczytu kątów jako:

$$ u_A(\theta) = \frac{1}{2} u_A(2\theta) $$

Błąd systematyczny odczytu położeń $2\theta$ może być związany z dokładnością
dyfraktometru. Pomiar był wykonywany w sposób ciągły, równoważny pomiarom
krokowym z krokiem $\Delta \theta = 0.013\degree$ trwającym $0.235$ s. Jako
niepewność systematyczną pomiarów $2\theta$ przyjmuję więc ten krok
(w radianach), podzielony przez dwa ze względu na wysoką klasę przyrządu
pomiarowego. Niepewność systematyczna odczytu kąta to zatem:

$$ u_B(\theta) = \frac{1}{\sqrt{3}} \frac{1}{2} \frac{1}{2} \Delta 2\theta $$

Jako całkowitą niepewność pomiaru kąta $\theta$ przyjmuję połączenie tych
niepewności:

$$ u(\theta) = \sqrt{ u_A^2(\theta) + u_B^2(\theta) } $$

Wartości stałej sieci $a$ obliczałem z zależności:

$$ a = \frac{\lambda}{2\sin\theta} \sqrt{h^2 + k^2 + l^2} $$

Niepewność $u(a)$ wyraża się zatem przez niepewność $u(\theta)$ zgodnie z
prawem przenoszenia niepewności:

$$ u(a) = \left| \frac{\mathrm{d}a}{\mathrm{d}\theta} u(\theta) \right|
  = \frac{\lambda}{2}\sqrt{h^2 + k^2 + l^2} \left|\frac{\cos\theta}{\sin^2\theta} u(\theta)\right| $$

W powyższym równaniu założyłem że wartość $\lambda$ nie jest obarczona
niepewnością pomiaru.

W celu wyznaczenia dokładnej wartości $a_0$ z użyciem funkcji Nelsona-Rileya,
obliczyłem również:

$$ u(\mathrm{NR}(\theta)) = \left| \frac{\mathrm{d}\,\mathrm{NR}(\theta)}{\mathrm{d}\theta} u(\theta) \right|
  = \left|\left( \cos\theta + \frac{\cos^2\theta}{\theta^2}
    + \frac{\cos\theta}{\sin^2\theta} + \frac{2\cos\theta\sin\theta}{\theta} \right) u(\theta)\right| $$

Tak wyliczone niepewności $u(a)$ i $u(\mathrm{NR}(\theta))$ użyłem w liniowej
regresji ważonej do wyznaczenia stałej $a_0$. Wynik wraz z niepewnością
przedstawiony jest w dyskusji wyników.
