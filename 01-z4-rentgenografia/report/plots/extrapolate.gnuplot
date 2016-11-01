set encoding utf8

input_data = "../../data/10-19/nacl-110-3next.dat"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/extrapolate.tex"

plot \
  input_data using 1:($2/0) title "2" with points, \
  input_data using 1:($4/0) title "4" with line, \
  input_data using 1:($6/0) title "6" with line, \
  input_data using 1:($8/0) title "8" with line, \
  input_data using 1:10 title "10" with line, \
  input_data using 1:12 title "12" with line

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/extrapolate.svg"
replot
