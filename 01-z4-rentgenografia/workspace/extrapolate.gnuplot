set encoding utf8

basename(path) = system("basename '".path."'")

input_data = "../data/10-19/nacl-110-3next.dat"

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output sprintf("plots/%s.svg", basename(input_data))


plot \
  input_data using 1:($2/0) title "2" with points, \
  input_data using 1:4 title "4" with line, \
  input_data using 1:6 title "6" with line, \
  input_data using 1:8 title "8" with line, \
  input_data using 1:10 title "10" with line, \
  input_data using 1:12 title "12" with line
