set encoding utf8

basename(path) = system("basename '".path."'")

input_data = "../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC"
extra_data = "../data/10-19/nacl-110-3next.dat"

set terminal svg size 900,600 fname 'Verdana' fsize 16
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

set obj 6 rect from 118.5,1000+100 to 121,40-100
set arrow from 120,3500 to 120,1400 lw 1 back filled

plot \
  input_data using 1:2 title title1 dashtype 1 lw 0.5 with lines axes x1y1

unset title
unset xlabel
unset ylabel

unset label
unset obj
unset arrow

unset key

set xtics 1.0
set ytics 200

set grid

set size 0.55, 0.55
set origin 0.40, 0.25

set xrange [118.5:121]
set yrange [40:1000]

plot \
  input_data using 1:2 title title1 pointsize 0.7 pt 2 lc 3 with points axes x1y1, \
  extra_data using 1:10 with line linestyle 1 lc 7 lw 1.5

unset multiplot
