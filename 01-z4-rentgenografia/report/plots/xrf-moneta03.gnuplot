set encoding utf8

input_data = "../../workspace/xrf-data/moneta03.txt"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/moneta03.tex"

set key left top

set xrange [1:10]

set xlabel 'energia [keV]'
set ylabel 'zliczenia [1/s]'

set arrow from 2.0,300 to 2.68,135 lw 1 back filled
set label '$\mathrm{Rh}_{K\alpha}$ (lampa)' noenhanced at (2.0-0.5),(300+50)

set arrow from 4.0,150 to 5.85,45 lw 1 back filled
set label '$\mathrm{Mn}_{K\alpha}$' noenhanced at (4.0-0.5),(150+50)

set arrow from 4.5,400 to 6.45,18 lw 1 back filled
set label '$\mathrm{Mn}_{K\beta}$' noenhanced at (4.5-0.5),(400+50)

set arrow from 4.85,900 to 7.95,900 lw 1 back filled
set label '$\mathrm{Cu}_{K\alpha}$' noenhanced at (4.85-0.9),(900)

set arrow from 4.85,700 to 8.60,595 lw 1 back filled
set label '$\mathrm{Zn}_{K\alpha}$' noenhanced at (4.85-0.9),(700)

set arrow from 7.0,400 to 8.90,165 lw 1 back filled
set label '$\mathrm{Cu}_{K\beta}$' noenhanced at (7.0-0.5),(400+50)

set arrow from 7.0,150 to 9.55,58 lw 1 back filled
set label '$\mathrm{Zn}_{K\beta}$' noenhanced at (7.0-0.5),(150+50)

plot \
  input_data using 1:($2/300) title "spektrogram monety 1gr z 2003r." lc 7 with lines

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/moneta03.svg"
replot
