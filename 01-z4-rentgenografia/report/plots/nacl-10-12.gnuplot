set encoding utf8

input_data = "../../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC"
extra_data = "../../data/10-19/nacl-110-3next.dat"

set terminal cairolatex pdf input color size 12cm,8cm
set output "out/nacl-10-12.tex"

# svg preview is not generated here since multiplot does not support replot

set multiplot

set xlabel '2$\theta$ [$\degree$]'
set ylabel 'natężenie [j.]'

set xtics 10
set yrange [0:]
set xrange [40:]

set obj 6 rect from 118.5,1000+100 to 121,40-100
set arrow from 120,3200 to 120,1400 lw 1 back filled

plot \
  input_data using 1:2 notitle dashtype 1 lw 0.8 lc 3 with lines, \
  input_data using 1:($2/0) title "dyfraktogram" with linespoints lc 3, \
  input_data using 1:($2/0) title "krzywa ekstrapolacyjna" with lines lc 7,

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

set size 0.55, 0.60
set origin 0.40, 0.25

set xrange [118.5:121]
set yrange [40:1000]

plot \
  input_data using 1:2 pointsize 0.7 pt 2 lc 3 with points, \
  extra_data using 1:10 with lines linestyle 1 lc 7 lw 1.5

unset multiplot
