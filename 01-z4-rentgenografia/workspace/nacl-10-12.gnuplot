set encoding utf8

basename(path) = system("basename '".path."'")

input_data = "../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC"

set terminal svg size 1000,600 fname 'Verdana' fsize 16
set output sprintf("plots/%s.svg", basename(input_data))

set multiplot

set title "Dyfraktogram NaCl" noenhanced
set xlabel "2θ [°]"
set ylabel "natężenie [j.]"

title1 = "Dyfraktogram NaCl"

set xtics 10
# set logscale y
set yrange [80:]
set xrange [40:]

set obj 5 rect from 109,1000+100 to 111.5,40-100
set arrow from 95,4300 to 108,1400 lw 1 back filled

set obj 6 rect from 118.5,1000+100 to 121,40-100
set arrow from 120,4300 to 120,1400 lw 1 back filled

plot \
  input_data using 1:2 title title1 dashtype 1 lw 2 with lines axes x1y1

unset title
unset xlabel
unset ylabel

unset label
unset obj
unset arrow

unset key

set size 0.35, 0.45
set origin 0.25, 0.35

set xrange [109:111.5]
set yrange [40:1000]

set xtics 1.0
set ytics 200

set grid

plot \
  input_data using 1:2 title title1 dashtype 1 lw 2 with lines axes x1y1

set size 0.35, 0.45
set origin 0.60, 0.35

set xrange [118.5:121]
set yrange [40:1000]

plot \
  input_data using 1:2 title title1 dashtype 1 lw 2 with lines axes x1y1

unset multiplot
