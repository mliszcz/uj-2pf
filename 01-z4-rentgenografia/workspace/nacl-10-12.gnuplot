set encoding utf8

basename(path) = system("basename '".path."'")

input_data = "../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC"

set terminal svg size 1000,600 fname 'Verdana' fsize 16
set output sprintf("plots/%s.svg", basename(input_data))

set title "Dyfraktogram NaCl" noenhanced
set xlabel "2θ [°]"
set ylabel "natężenie [j.]"

title1 = "przebieg sygnału MSK"

set xtics 10
set logscale y
set yrange [80:]

plot \
  input_data using 1:2 title title1 dashtype 1 lw 2 with lines axes x1y1
