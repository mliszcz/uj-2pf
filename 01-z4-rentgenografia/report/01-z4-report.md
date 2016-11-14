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

keywords:
  - dyfrakcja
  - NaCl

abstract: |
  W eksperymencie przeprowadzona została jakościowa analiza próbek substancji
  krystalicznych metodą dyfrakcji rentgenowskiej. Zostały wywskaźnikowane
  dyfraktogramy NaCl, KCl, salvity i salvity z krzemem.
  Dla NaCl została wyzaczona stała sieci krystalicznej $a = 5.641320(37)$ \AA.
  Wszystkie wskaźniki Millera tej próbki były albo parzyste albo nieparzyste *fcc*,
  co potwierdziło że NaCl krystalizuje w strukturze *fcc*.
  Dyfraktogram salvity z krzemem został rozłożony na
  sumę dyfraktogramów NaCl, KCl oraz Si, potwierdzając jej skład fazowy.
---

# Wstęp

Kryształy to ciała stałe dające dyskretny obraz dyfrakcyjny. Wiele kryształów
spełnia jednak klasyczną definicję, określającą kryształ jako ciało o
periodycznej budowie w którym występuje atomowy porządek dalekiego zasięgu.
Strukturę krystaliczną
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
zaproponowanymi kolejno przez Lauego (str. 245-252 w [@penkala1976]), Ewalda i
Braggów (str. 252-253 w [@penkala1976]).
W tej pracy wykorzystane zostało podejście Braggów.
Promieniowanie padające na kryształ pod kątem $\theta$ w niewielkiej części
przenika w głąb kryształu i jest odbijane od kolejnych płaszczyzn
krystalograficznych. Dla warstw kryształu odległych o $d$ różnica długości dróg
przebytych przez odbite od nich promienie wynosi $2d \sin \theta$. Wzmocnienie
odbitego promieniowania następuje kiedy różnica dróg optycznych jest równa
całkowitej wielokrotności fali promieniowania padającego. Powoduje to
pojawianie się maksimów na obrazie dyfrakcyjnym. Warunek ten można zapisać w
postaci równania Bragga-Wulfa:

$$ 2d \sin \theta = n \lambda $$ {#eq:bragg}

Odległość $d$ w rodzinie płaszczyzn $(hkl)$ jest zależna od typu komórki
elementarnej. Dla sieci regularnej warunek łączący $d$ ze wskaźnikami
$h$, $k$ i $l$ to:

$$ \frac{1}{d^2} = \frac{h^2 + k^2 + l^2}{a^2} $$ {#eq:dinhkl}

gdzie $a$ jest stałą sieci krystalicznej. Łącząc oba warunki otrzymujemy
równanie które pozwala dla danego maksimum dyfrakcyjnego wyznaczyć rodzinę
płaszczyzn sieciowych na których nastąpiło ugięcie:

$$ \sin^2 \theta = \frac{\lambda^2}{4a^2}(h^2 + k^2 + l^2) $$ {#eq:quadratic}

W przypadku próbek wielofazowych, gdzie zmieszane są różne substancje
krystaliczne, dyfraktogram jest sumą dyfraktogramów wszystkich
substancji składowych. Dysponując bazą wzorców można na tej podstawie określić
skład próbki wielofazowej.

W analizie próbek polikrystalicznych wykorzystywane jest promieniowanie z
*widma charakterystycznego* lamp rentgenowskich. Największą intensywnością
charakteryzują się linie serii $K$: $K_{\alpha1}$, $K_{\alpha2}$ oraz
$K_{\beta}$, pochodzące z przejść elektronowych z poziomów $L$ i $M$ na poziom
$K$. Promieniowanie od niepożądanych linii usuwa się z widma przez zastosowanie
odpowiednich filtrów.

Celem eksperymentu była analiza obrazu dyfrakcyjnego próbki jednofazowej,
przeprowadzenie jego wskaźnikowania oraz wyznaczenie stałej sieci
krystalicznej. Analizie została poddana również próbka wielofazowa w celu
ustalenia jej składu fazowego.

# Opis eksperymentu

W eksperymencie badałem pięć próbek,
P1: *NaCl* (sproszkowana, ucierana),
P2: *KCl* (sproszkowana),
P3: *Si* (wzorzec PANalytical),
P4: *Salvita* (sproszkowana, ucierana, mieszanina 75% NaCl i 25% KCl),
P5: *Salvita z krzemem* (sproszkowana).

Pomiary przeprowadziłem z wykorzystaniem dyfraktometru rentgenowskiego
PANalytical EMPYREAN wyposażonego w detektor PIXcel3D. Dyfraktometr pracował w geometrii
Bragga-Brentano. Promieniowanie rentgenowskie pochodziło z lampy z anodą Cu ($K_{\alpha 1} = 1.5406\,\mathrm{\AA}$).
Lampa zasilana była prądem $40$ mA z napięciem $40$ kV. Promień
goniometru w tym układzie wynosił 240 mm.
W dyfraktometrze ustawiłem następującą konfigurację *wiązki pierwotnej*:
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
pomiaru na każdej z próbek można było obserwować powstałe centra barwne będące wynikiem oddziaływania promieniowania rentgenowskiego z materiałem
próbki [@norby2006].

# Wyniki i dyskusja

Dla próbki P1 przeprowadziłem wskaźnikowanie i wyznaczyłem stałą sieci
krystalicznej. Dla wielofazowej próbki P5 dokonałem rozkładu dyfraktogramu na
wzorcowe próbki P1, P2 i P3.

## Wskaźnikowanie dyfraktogramu i wyznaczenie stałej sieciowej NaCl

Przy użyciu programu WinPLOTR [@www-winplotr] odczytałem położenia maksimów
dyfrakcyjnych. Do poszczególnych maksimów program pozwalał na dopasowanie
krzywej ekstrapolacyjnej. Szczegóły tego procesu opisuje załącznik A.
Dyfraktogram NaCl wraz z dopasowaniem dla jednego z refleksów przedstawia
rys. 1.

\begin{figure}
\centering
\label{fig:nacl-diff}
\input{plots/out/nacl-10-12.tex}
\caption{Dyfraktogram NaCl z dopasowaniem profilu dla jednego z refleksów.
  Dla czytelności rysunku pominięty został najbardziej intensywny refleks
  dla $2\theta \approx 27\degree$.}

\end{figure}

Dyfraktogram wywskaźnikowałem dobierając taki dzielnik, który dla wszystkich
wartości $\sin^2 \theta$ dawał liczbę całkowitą. Zgodnie z równaniem (3)
liczba ta powinna być równa $h^2+k^2+l^2$. Dzięki zastosowaniu filtra
niklowego na dyfraktogramie nie było zauważalnych wysokokątowych refleksów
od linii $K_{\beta}$ miedzi.
W ten sposób wywskaźnikowałem wszystkie refleksy dyfraktogramu od linii
$K_{\alpha 1}$ miedzi.
Wartość $h^2+k^2+l^2$ dla każdego z refleksów dawała się rozłożyć tak, by
wskaźniki $h$, $k$ i $l$ były albo parzyste albo nieparzyste, co jest
zgodne z regułą wygaszeń dla sieci *fcc* [@lufaso2013]. **NaCl krystalizuje
więc w strukturze regularnej powierzchniowo centrowanej**.

Znając wskaźniki Millera i wartość kąta $\theta$ przy którym obserwowane
było maksimum braggowskie, przy pomocy równania (3)
wyznaczyłem wartości stałych sieciowych $a$. Wyniki wskaźnikowania i
wyznaczone stałe sieciowe przedstawia tabela 1.
Przyjęta w obliczeniach długość falii linii $K_{\alpha1}$ miedzi to
$\lambda=1.54056\,\mathrm{\AA}$ [^note-ka-lambda].
Trzy refleksy, dla kątów $2\theta$ wynoszących odpowiednio około $73.0\degree$,
$90.5\degree$ i $107.5\degree$, które ze względu na bardzo małe natężenie nie
zostały użyte w dalszych obliczeniach, również spełniały równanie Bragga.
Odpowiadają one brakującym zestawom wskaźników: $331$, $511$ i $531$.

[^note-ka-lambda]: Stała podana przez program WinPlotr.

$2\theta\,[\degree]$ | $hkl$ | $a\,[\mathrm{\AA}]$
-------------------------|-------------------------|-------------------------
27.34730(30) | $111$ | 5.64388(76)
31.68680(10) | $200$ | 5.64289(65)
45.43070(30) | $220$ | 5.64201(44)
53.8489(23)  | $311$ | 5.64188(43)
56.45330(70) | $222$ | 5.64176(35)
66.21260(60) | $400$ | 5.64107(29)
75.26800(50) | $420$ | 5.64152(24)
83.95820(80) | $422$ | 5.64182(21)
101.1383(36) | $440$ | 5.64139(21)
110.0194(17) | $442$ | 5.64136(14)
119.4398(18) | $620$ | 5.64132(12)
129.8396(19) | $622$ | 5.641353(96)

Table: Wskaźnikowanie refleksów dyfraktogramu próbki P1 w punktach $2\theta$. {#tbl:wskaznikowanie}

W celu wyznaczenia dokładnej wartości stałej sieciowej $a_0$, do zależności
stałych $a$ od wartości funkcji Nelsona-Rileya [@de2006uncertainty] dla $\theta$,
dopasowałem prostą regresji liniowej. Prosta przedstawiona jest na
rys. 2. Stały parametr dopasowania to
wartość $a_0$. \textbf{Otrzymałem $a_0 = 5.641320(37)$ \AA}. Wartości podawane w
różnych bazach materiałów różnią się między sobą:
$5.6404(1)$ \AA [^note-nacl-mindat],
$5.64154(6)$ \AA [^note-nacl-ruff01],
$5.6429(1)$ \AA [^note-nacl-ruff01]. Wartość stałej sieci zależy od wielu
czynników, między innymi temperatury panującej w trakcie eksperymentu.
Otrzymany wynik potwierdza jednak że stała sieciowa badanej próbki w
granicach niepewności pomiarowej jest zgodna ze stałą sieciową halitu.

\begin{figure}[H]
\centering
\input{plots/out/nacl-analyzed.tex}
\label{fig:nr-fit}
\caption{Zależność stałej struktury krystalicznej $a$ od wartości funkcji
  Nelsona-Rileya dla kąta $\theta$. Prosta została dopasowana do czterech
  punktów o największej wartości kąta $\theta$.}

\end{figure}

[^note-nacl-ruff01]: http://rruff.info/halite/display=default/R070534
[^note-nacl-ruff02]: http://rruff.info/halite/display=default/R070586
[^note-nacl-mindat]: http://www.mindat.org/min-1804.html

## Analiza składu próbki wielofazowej

Dokonałem analizy jakościowej obrazu dyfrakcyjnego wielofazowej próbki P5.
Porównując go z dyfraktogramami próbek wzorcowych P1, P2 i P3 udało się
zidentyfikować wszystkie refleksy próbki P5 jako pochodzące od poszczególnych
jej składników. Złożenie dyfraktogramów przedstawiają rys. 3 i 4.

\begin{figure}
\centering
\input{plots/out/multiphase-salvita-si-hiangle.tex}
\label{fig:multiphase-salvita-si-hiangle}
\caption{Dyfraktogram próbki wielofazowej P5 (u góry) porównany z
  dyfraktogramami próbek P1, P2 i P3 (u dołu). Dla każdego z refleksów próbki
  P5 widać odpowiadający refleks jednej z próbek wzorcowych. Dla zwiększenia
  czytelności rysunku pokazane są dyfraktogramy tylko dla $2 \theta>80\degree$
  a natężenia refleksów dla próbek P1, P2 i P3 zostały przeskalowane i
  przesunięte.}

\end{figure}

\begin{figure}
\centering
\begin{minipage}{.5\textwidth}
  \centering
  \input{plots/out/multiphase-salvita-si-loangle.tex}
\end{minipage}%
\begin{minipage}{.5\textwidth}
  \centering
  \input{plots/out/multiphase-salvita-si-fullangle.tex}
  \label{fig:multiphase-salvita-si-fullangle}
\end{minipage}
\captionof{figure}{Dyfraktogram P5 porównany z dyfraktogramami P1, P2 i P3 dla $2 \theta<80\degree$.}
\label{fig:multiphase-salvita-si-loangle}
\end{figure}

Natężenia odpowiadających sobie refleksów w próbce wielofazowej i próbkach
wzorcowych różnią się między sobą. Jest to związane z różną zawartością
poszczególnych substancji w próbce wielofazowej i występującą preferencją
orientacji w samych próbkacj jednofazowych.

# Podsumowanie

W eksperymencie zbadana została struktura pięciu materiałów z wykorzystaniem
dyfrakcji rentgenowskiej. Uzyskane zostały dyfraktogramy dla NaCl, KCl, Si,
salvity oraz salvity zmieszanej z krzemem. Wszystkie próbki dały dyskretny
obraz dyfrakcyjny, co jest spodziewane dla ciał o strukturze krystalicznej.
Dalsza analiza skupiła się na próbce NaCl.

Przeprowadzone pomiary wykazały że NaCl krystalizuje w strukturze
regularnej powierzchniowo centrowanej. W obserwowanym dyfraktogramie udało
się wywskaźnikować wszystkie zauważalne refleksy od linii Cu $K_{\alpha 1}$.
Dla wszystkich refleksów są spełnione reguły wygaszeń oczekiwane dla
struktury *fcc*.
Eksperyment potwierdził, że dla dużych wartości kąta $2\theta$ (większych
od $100\degree$) zależność stałej struktury krystalicznej $a$ od wartości
funkcji Nelsona-Rileya kąta $\theta$ jest liniowa. Pozwoliło to otrzymać
dokładną wartość stałej sieci, zbliżoną do wartości podawanych w bazach
danych.

Jakościowa analiza dyfraktogramu próbki wielofazowej umożliwiła określenie
jej składu
poprzez rozseparowanie refleksów na refleksy pochodzące od poszczególnych
składników (pozyskane z próbek wzorcowych).

# Bibliografia

\setlength{\parindent}{0cm}
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
kalkulacyjnym (dostępny w załączniku). Dla pierwszego z refleksów (o
najmniejszym kącie $\theta_1$)
dzieliłem wartość $\sin^2 \theta_1$ przez kolejne $C_1=1,2,3,...$, otrzymując
hipotetyczną wartość $\gamma$. Dla kolejnych wartości $\gamma$ obserwowałem w
dodatkowej kolumnie wartości $C_n$ dla pozostałych refleksów. Właściwa wartość
$\gamma$ to taka, dla której wartości $C_n$ wszystkich refleksów są
całkowite (lub bardzo bliskie całkowitych). Odpowiednią wartością $C_1$ dla
pierwszego refleksu okazała się liczba $3$. Przyjmując $\gamma =
\sin^2 \theta_1 / C_1$ wyliczyłem pozostałe wartości $C_n$. Następnie dla
każdego $C_n = (h_n^2 + k_n^2 + l_n^2)$ odgadłem odpowiedni rozkład na $h_n$,
$k_n$ i $l_n$. Wynik wskaźnikowania przedstawia tabela we właściwej części
sprawozdania.

## Wyliczenie stałej $a_0$

W analizie wyników skorzystałem z funkcji Nelsona-Rileya, wyrażającej błąd
wyznaczenia odległości międzypłaszczyznowej $d$ jako:

$$ \frac{\Delta d}{d}
  = K\left(\frac{\cos^2\theta}{\sin\theta}+\frac{\cos^2\theta}{\theta}\right)
  = K\,\mathrm{NR}(\theta),
  \qquad K \in \mathbb{R} $$ {#eq:nelson-riley}

Powyższa zależność jest prawdziwa dla dużych kątów $\theta > 30\degree$.
Korzystając z tego że $d \propto a$, można dalej zapisać:

$$ \frac{\Delta a}{a}
  = \frac{a - a_0}{a}
  = K\,\mathrm{NR}(\theta)
  \qquad \Rightarrow \qquad
  a = a_0 K \, \mathrm{NR}(\theta) + a_0 $$ {#eq:nelson-riley}

Gdzie $a_0$ jest dokładną wartością stałej sieci.

Dla wszystkich refleksów wyliczyłem wartość
stałej $a$ z równania (4) oraz wartość funkcji $\mathrm{NR}(\theta)$. Metodą
regresji liniowej do czterech punktów o największej wartości $\theta$
dopasowałem prostą. Kolejne punkty, mimo że powinny spełniać wyżej opisaną
zależność, znacznie odbiegały od prostej wyznaczonej przez cztery pierwsze
punkty. Może to być wynik niedokładnego dopasowania profilu w tych refleksach.
Stały współczynnik
dopasowania to szukana wartość $a_0$. Dopasowana prosta przedstawiona
jest na rys. 1 w sprawozdaniu. Otrzymane parametry dopasowania to:

$$ a(\theta) = \alpha \mathrm{NR}(\theta) + \beta, \qquad
\alpha = 4.8(6.8) \cdot 10^{-5} \,\mathrm{\AA}, \qquad
\beta = 5.641320(37)\,\mathrm{\AA}$$ {#eq:}

# Ilościowa analiza niepewności pomiarowych

Wyznaczając położenia $2\theta$ refleksów program WinPLOTR podawał również
niepewność statystyczną $u_A(2\theta)$ tego położenia. Przyjąłem więc
niepewności statystyczne odczytu kątów jako:

$$ u_A(\theta) = \frac{1}{2} u_A(2\theta) $$ {#eq:}

Błąd systematyczny odczytu położeń $2\theta$ może być związany z dokładnością
dyfraktometru. Pomiar był wykonywany w sposób ciągły, równoważny pomiarom
krokowym z krokiem $\Delta 2\theta = 0.013\degree$ trwającym $0.235$ s. Jako
niepewność systematyczną pomiarów $2\theta$ przyjmuję więc ten krok
(w radianach), podzielony przez dwa ze względu na wysoką klasę przyrządu
pomiarowego. Niepewność systematyczna odczytu kąta to zatem:

$$ u_B(\theta) = \frac{1}{\sqrt{3}} \frac{1}{2} \frac{1}{2} \Delta 2\theta $$ {#eq:}

Jako całkowitą niepewność pomiaru kąta $\theta$ przyjąłem połączenie tych
niepewności:

$$ u(\theta) = \sqrt{ u_A^2(\theta) + u_B^2(\theta) } $$ {#eq:}

Wartości stałej sieci $a$ obliczałem z zależności:

$$ a = \frac{\lambda}{2\sin\theta} \sqrt{h^2 + k^2 + l^2} $$ {#eq:}

Niepewność $u(a)$ wyraża się zatem przez niepewność $u(\theta)$ zgodnie z
prawem przenoszenia niepewności:

$$ u(a) = \left| \frac{\mathrm{d}a}{\mathrm{d}\theta} u(\theta) \right|
  = \frac{\lambda}{2}\sqrt{h^2 + k^2 + l^2} \left|\frac{\cos\theta}{\sin^2\theta}\right| u(\theta) $$ {#eq:}

W powyższym równaniu założyłem że wartość $\lambda$ jest obarczona
zaniedbywalnie małą niepewnością pomiaru.

W celu wyznaczenia dokładnej wartości $a_0$ z użyciem funkcji Nelsona-Rileya,
obliczyłem również:

$$ u(\mathrm{NR}(\theta)) = \left| \frac{\mathrm{d}\,\mathrm{NR}(\theta)}{\mathrm{d}\theta} u(\theta) \right|
  = \left| \cos\theta + \frac{\cos^2\theta}{\theta^2}
    + \frac{\cos\theta}{\sin^2\theta} + \frac{2\cos\theta\sin\theta}{\theta} \right| u(\theta) $$ {#eq:}

Tak wyliczone niepewności $u(a)$ i $u(\mathrm{NR}(\theta))$ użyłem w liniowej
regresji ważonej do wyznaczenia stałej $a_0$. Wynik wraz z niepewnością
przedstawiony jest w dyskusji wyników. Dane dla których sporządziłem wykres
przedstawia tabela 2.

$2\theta\,[\degree]$ | $a\,[\mathrm{\AA}]$ | $\mathrm{NR}(\theta)$ | $2\theta\,[\degree]$ | $a\,[\mathrm{\AA}]$ | $\mathrm{NR}(\theta)$
------------|------------|------------|------------|------------|------------
27.34730(30) | 5.64388(76)  | 7.9500(12)  | 75.26800(50) | 5.64152(24)  | 1.98188(19)
31.68680(10) | 5.64289(65)  | 6.73671(91) | 83.95820(80) | 5.64182(21)  | 1.58048(16)
45.43070(30) | 5.64201(44)  | 4.34971(47) | 101.1383(36) | 5.64139(21)  | 0.97936(15)
53.8489(23)  | 5.64188(43)  | 3.44728(41) | 110.0194(17) | 5.64136(14)  | 0.743877(99)
56.45330(70) | 5.64176(35)  | 3.21717(32) | 119.4398(18) | 5.64132(12)  | 0.538337(82)
66.21260(60) | 5.64107(29)  | 2.49901(24) | 129.8396(19) | 5.641353(96) | 0.356963(65)

Table: Wartości funkcji $\mathrm{NR}(\theta)$ i odpowiadające im $a(\theta)$
użyte do sporządzenia wykresu. {#tbl:}

