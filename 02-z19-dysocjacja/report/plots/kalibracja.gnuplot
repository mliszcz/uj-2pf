set encoding utf8

input_data = "../../workspace/kalibracja.txt"

spectrum_data = "../../data/11-09/szczelina004-krok18-lampa-spektr-pomiat-wzm9.txt"
# spectrum_data = "../../data/11-09/szczelina004-krok18-lampa-spektralna-retest.txt"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/kalibracja.tex"

set fit logfile '/dev/null'

f(x) = a*x + b
fit f(x) input_data using 1:4 via a, b

set xlabel "krok pomiaru"
set ylabel "długość fali [nm]"

set y2range [0:11]

plot \
  f(x) title "krzywa dyspersji" with lines, \
  input_data using 1:4 title "linie widmowe" with points, \
  spectrum_data using 0:($1+0.2) title "widmo lampy spektralnej" with lines axes x1y2

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/kalibracja.svg"
replot
