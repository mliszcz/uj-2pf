set encoding utf8

input_data = "../../data/11-16/lampa-wzm90-od139-do210-40Hz-krok18-pow12-dot.txt"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/halogen.tex"

set xlabel "krok pomiaru"
set ylabel "natężenie"

plot \
  input_data using 0:1 title "widmo lampy halogenowej" with lines

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/halogen.svg"
replot
