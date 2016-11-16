set encoding utf8

input_data = "kalibracja.txt"

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "kalibracja.svg"

set fit logfile '/dev/null'

f(x) = a*x + b
fit f(x) input_data using 1:4 via a, b

# set title "Zależność stałej struktury od wartości funkcji Nelsona-Rileya" noenhanced
set xlabel 'krok'
set ylabel 'lambda'

plot \
  f(x) with lines, \
  input_data using 1:4 with points
