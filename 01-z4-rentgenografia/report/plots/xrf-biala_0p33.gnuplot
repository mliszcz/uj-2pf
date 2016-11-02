set encoding utf8

input_data = "../../workspace/xrf-data/biala_0p33.txt"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/biala_0p33.tex"

set key left top

set xrange [1.5:4.5]
set yrange [0:800]

set xlabel 'energia [keV]'
set ylabel 'zliczenia [1/s]'

set arrow from 1.8,150 to 1.92,40 lw 1 back filled
set label '$1.92\,\mathrm{keV}$' noenhanced at (1.8-0.2),(150+50)

set arrow from 2.0,300 to 2.31,30 lw 1 back filled
set label '$\mathrm{S}_{K\alpha}$' noenhanced at (2.0-0.1),(300+50)

set arrow from 2.2,500 to 2.68,258 lw 1 back filled
set label '$\mathrm{Rh}_{K\alpha}$ (lampa)' noenhanced at (2.2-0.3),(500+50)

set arrow from 3.2,550 to 3.58,550 lw 1 back filled
set label '$\mathrm{Ca}_{K\alpha}$' noenhanced at (3.2-0.3),(550)

set arrow from 3.4,350 to 3.98,350 lw 1 back filled
set label '$\mathrm{Ca}_{K\beta}$' noenhanced at (3.4-0.3),(350)

plot \
  input_data using 1:($2/300) title "skorupki białe" lc 7 with lines

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/biala_0p33.svg"
replot
