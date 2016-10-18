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
zakresu kąta $\theta$, z około [5, 150] do [20, 135].

Drugi pomiar został wykonany przeze mnie, z większą dokładnością - zmniejszyłem
krok i wydłużyłem czas pomiaru w jednym kroku.

Otrzymany dyfraktogram poddam analizie w celu określenia stałej
sieci krystalicznej.

## Parametry układu

W eksperymencie wykorzystałem dyfraktometr PANalytical EMPYREAN
oraz detektor PIXcel3D. Lampa zasilana była prądem 40 kV i 40 m. Promień
goniometru w tym układzie wynosił 240 mm.

## Wyniki pomiarów

* [combined.png](data/10-12/combined.png)
* [combined-zoom.png](data/10-12/combined-zoom.png)
* [combined-zoom-snr.png](data/10-12/combined-zoom-snr.png)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC](data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.rd](data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.rd)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.UDF](data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.UDF)
* [ML_NaCl_20-137deg_0p01_60s_36min_20161012.xrdml](data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.xrdml)
* [multi-samples-hi.png](data/10-12/multi-samples-hi.png)

## Zdjęcia

* [WP_20161012_14_00_11_Pro.jpg](photos/WP_20161012_14_00_11_Pro.jpg)
* [WP_20161012_14_00_29_Pro.jpg](photos/WP_20161012_14_00_29_Pro.jpg)
* [WP_20161012_14_00_39_Pro.jpg](photos/WP_20161012_14_00_39_Pro.jpg)
* [WP_20161012_11_48_00_Pro.jpg](photos/WP_20161012_11_48_00_Pro.jpg)

## Użyte oprogramowanie

* PANalytical DataCollector
* PANalytical HighScore
* PANalytical DataViewer
* Full Prof Suite, WinPlotr - wskaźnikowanie hkl

## Dodatkowe notatki

* tylko niewielka częśc mocy lampy generuje promieniowanie,
* *centra barw* - dowiedzieć się więcej,
  * *centra barwne* - *(NaCl, KCl, RbCl, LiCl, CsCl). Czyste kryształy tych
    substancji są przeźroczyste w całym widzialnym obszarze  widma. Natomiast
    zabarwiają się one poprzez napromieniowanie (np.: promieniami
    rentgenowskimi, strumieniem neutronów czy elektronó w). Powstają wówczas
    np.: centra barwne typu F. Centrum F jest to luka po jonie ujemnym i
    związany z nią elektron.*
  * ![](http://moorechemistry.weebly.com/uploads/8/9/4/4/8944539/217734.jpg)
  * <http://www.ftj.agh.edu.pl/~wierzbanowski/DEF_pkt.pdf>
  * <http://www.szlif.if.uj.edu.pl/documents/92342383/93264630/2_SZLIF_2_MMrozek.pdf>
  * <http://zf.if.uj.edu.pl/pl/node/71>
* w dużych kątach $\theta$ próbka może być mniej doskonała, refleksy pokrywają
  się z lepszymi próbkami,
* bezpieczny minimalny $\theta$ to 15 $\degree$. Inaczej wiązka może uszkodzić
detektor,
* analiza schodka - *krawędź absorbcji* z użytym filtrem Niklowym,
  * X-ray Filters (również dla Ni)
  * <http://pd.chem.ucl.ac.uk/pdnn/inst1/filters.htm>
  * <http://skuld.bmsc.washington.edu/scatter/AS_periodic.html>
  * <http://skuld.bmsc.washington.edu/scatter/data/Ni.html>
  * *The absorption edge of nickel metal at 1.488 Å lies between the Kα (λ =
    1.542 Å) and Kβ (λ = 1.392 Å) X-ray spectral lines of copper. Hence nickel
    foil of an appropriate thickness can be used to reduce the intensity of the
    Cu Kβ X-rays*
* czytać skrypt o niepewnościach standardowych A i B,
* doczytać o strukturze halitu,
  * *minerał z gromady halogenków. Nazwa pochodzi od greckich słów halos – sól,
    słony, oraz lithos – kamień. Minerał znany i używany od czasów
    starożytnych. Głównym składnikiem jest chlorek sodu.*
  * *Teoretycznie zawiera 39,34% Na i 60,66% Cl.*
  * <https://en.wikipedia.org/wiki/Sodium_chloride>
  * *In solid sodium chloride, each ion is surrounded by six ions of the
    opposite charge as expected on electrostatic grounds. The surrounding ions
    are located at the vertices of a regular octahedron. In the language of
    close-packing, the larger chloride ions are arranged in a cubic array
    whereas the smaller sodium ions fill all the cubic gaps (octahedral voids)
    between them. This same basic structure is found in many other compounds
    and is commonly known as the halite or rock-salt crystal structure. It can
    be represented as a face-centered cubic (fcc) lattice with a two-atom basis
    or as two interpenetrating face centered cubic lattices. The first atom is
    located at each lattice point, and the second atom is located halfway
    between lattice points along the fcc unit cell edge.*
* refleksy niskokątowe są czułe na powierzchnię próbki, ale używane do
wskaźnikowania,
* *preferencja orientacji* - objawia się przez różne natężenia w różnych
  próbkach dla tych samych refleksów,
  * <https://pl.wikipedia.org/wiki/Tekstura_krystaliczna>
  * <https://en.wikipedia.org/wiki/Texture_(crystalline)>
* konspekt ćwiczenia:
  * <http://www.if.pw.edu.pl/~labfiz1p/cmsimple2_4/1instrukcje_pdf/52.pdf>
  * <http://uranos.cto.us.edu.pl/~crystal/mag/mag5b.pdf>
