set encoding utf8

basename(path) = system("basename '".path."'")

input_data = "nacl-analyzed.txt"

set terminal svg size 900,600 fname 'Verdana' fsize 16
set output sprintf("plots/%s.svg", basename(input_data))

f(x) = a*x + b
fit f(x) input_data every ::8 using 7:3:8:4 xyerrors via a, b

# set title "Zależność stałej struktury od wartości funkcji Nelsona-Rileya" noenhanced
set xlabel "NR(θ)"
set ylabel "a [A]"

# set x2label 'θ'
# set x2tics

set xrange [0:6]

# set link x2 via x inverse ((cos(x)**2)/sin(x)+(cos(x)**2)/x)

plot \
  f(x) title "a(NR(θ))" with line, \
  input_data every ::8 using 7:3:8:4 title "a" with xyerrorbars, \
  input_data every ::0::7 using 7:3:8:4 title "a" with xyerrorbars
