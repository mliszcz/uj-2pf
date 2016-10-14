
set encoding utf8
set decimalsign locale "pl_PL.UTF-8"

input_data = "wykres_02.dat"

set terminal svg size 1000,600 fname 'Verdana' fsize 16
set output sprintf("output/%s.svg", input_data)

set title sprintf("Przebieg zmiany fazy i sygnału w modulacji MSK (%s)", input_data) noenhanced
set xlabel "czas [T_B]"
set ylabel "przebieg sygnału [V]"
set y2label "faza sygnału [π/2]"

title1 = "przebieg sygnału MSK"
title2 = "przebieg sygnału GMSK"
title3 = "faza sygnału MSK"
title4 = "faza sygnału GMSK"

set y2tics

set xrange [0:4]

set key right bottom box opaque

plot \
  input_data using 1:2 title title1 dashtype 1 lw 2 with lines axes x1y1, \
  input_data using 1:3 title title2 dashtype 2 lw 2 with lines axes x1y1, \
  input_data using 1:4 title title3 dashtype 3 lw 2 with lines axes x1y2, \
  input_data using 1:5 title title4 dashtype 4 lw 2 with lines axes x1y2
