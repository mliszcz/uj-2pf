set encoding utf8

input_data = "../../workspace/nacl-analyzed.txt"

set terminal cairolatex pdf input color size 12cm,7cm
set output "out/nacl-analyzed.tex"

set fit logfile '/dev/null'

f(x) = a*x + b
fit f(x) input_data every ::8 using 7:3:8:4 xyerrors via a, b

# set title "Zależność stałej struktury od wartości funkcji Nelsona-Rileya" noenhanced
set xlabel 'NR($\theta$)'
set ylabel 'a [\AA]'

# set x2label 'θ'
# set x2tics

set xrange [0:6]

# set link x2 via x inverse ((cos(x)**2)/sin(x)+(cos(x)**2)/x)

plot \
  f(x) title 'a(NR($\theta$))' with line, \
  input_data every ::8 using 7:3:8:4 title "a" with xyerrorbars, \
  input_data every ::0::7 using 7:3:8:4 title "a" with xyerrorbars

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/nacl-analyzed.svg"
replot
