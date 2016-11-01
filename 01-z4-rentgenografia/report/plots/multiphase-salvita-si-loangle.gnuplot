set encoding utf8

nacl_data = "../../data/10-12/ML_NaCl_20-137deg_0p01_60s_36min_20161012.ASC"
kcl_data = "../../data/10-19/KCl_20-137deg_0p01_60s_36min_1.ASC"
si_data = "../../data/10-19/Si_20-137deg_0p01_60s_36min_1.ASC"
salvita_si_data = "../../data/10-19/SalvitaSi_20-137deg_0p01_60s_36min_1.ASC"

set terminal cairolatex pdf input color size 12cm,10cm
# set terminal svg size 900,600 fname 'Verdana' fsize 16
set output "out/multiphase-salvita-si-loangle.tex"

# svg preview is not generated here since multiplot does not support replot

set tmargin 0
set bmargin 0

unset tmargin
unset bmargin

set ylabel 'natężenie [j.]'
set yrange [0:]

set xrange [20:80]
set x2range [20:80]

set xtics 10
set x2tics 10

set multiplot layout 2,1 rowsfirst

set xtics format ""
set x2tics format "% g"
set bmargin 0
unset tmargin

plot \
  salvita_si_data using 1:2 title 'NaCl-KCl-Si' lw 0.6 lc 4 with lines

set xlabel '2$\theta$ [$\degree$]'

set xtics format "% g"
set x2tics format ""
set tmargin 0
unset bmargin

set ytics format ""
unset ylabel
set lmargin 9.33

plot \
  nacl_data using 1:($2/3+50)  title 'NaCl' lw 0.6 lc 1 with lines, \
  kcl_data  using 1:($2/1+0)   title 'KCl'  lw 0.6 lc 2 with lines, \
  si_data   using 1:($2/10+80) title 'Si'   lw 0.6 lc 7 with lines

unset multiplot
