
set encoding utf8
set decimalsign locale "pl_PL.UTF-8"

input_data = "wykres_01_06.txt"

g1_excl_start = 2.0
g1_excl_end = 5.5

g2_excl_start = 4.5
g2_excl_end = 8.5

gauss1(x)=A1/(sig*sqrt(2.*pi))*exp(-(x-u1)**2/(2.*sig**2)) + b1*x
gauss2(x)=A2/(sig*sqrt(2.*pi))*exp(-(x-u2)**2/(2.*sig**2)) + b2*x

set fit errorvariables

fit gauss1(x) input_data every ::2 \
  using 1:($1<g1_excl_start || $1>g1_excl_end ? $2 : 1/0) \
  via A1, u1, sig, b1

fit gauss2(x) input_data every ::2 \
  using 1:($1<g2_excl_start || $1>g2_excl_end ? $2 : 1/0) \
  via A2, u2, b2

fits_label = "Dopasowane funkcje:\nf(x) = A/(σ√(2π)) exp(-½((x-μ)/σ)²) + bx"
fits_fmt_A = "A=%.3f(%d) ⨉ 10 mW/m"
fits_fmt_u = "μ=%.3f(%d) mm"
fits_fmt_o = "σ=%.3f(%d) mm"
fits_fmt_b = "b=%.4f(%2d) ⨉ 0.1 mW/m³"
fits_format = "gauss%d(x):\n".fits_fmt_A."\n".fits_fmt_u."\n".fits_fmt_o."\n".fits_fmt_b
fits_g1 = sprintf(fits_format, 1, A1, A1_err*1000, u1, u1_err*1000, sig, sig_err*1000, b1, b1_err*10000)
fits_g2 = sprintf(fits_format, 2, A2, A2_err*1000, u2, u2_err*1000, sig, sig_err*1000, b2, b2_err*10000)

set terminal svg size 800,600 fname 'Verdana' fsize 12
set output sprintf("output/%s.svg", input_data)

set multiplot

set title sprintf("Profil natężenia wiązki laserowej (%s)", input_data) noenhanced
set xlabel "położenie detektora [mm]"
set ylabel "natężenie światła [mW/cm²]"

set label 10 at 6.0,0.25 fits_label front left
set label 11 at 7.2,2.2 fits_g1 front left
set label 12 at 0.4,1.2 fits_g2 front left

set obj 5 rect from 5.45,2.8 to 6.85,2.2
set arrow from 5.35,2.5 to 4.0,2.5 lw 1 back filled

set key box opaque

plot input_data using 1:2 title input_data linestyle 1 pointsize 1.4, \
  gauss1(x) linestyle 2, \
  gauss2(x) linestyle 3

unset title
unset xlabel
unset ylabel

unset label
unset obj
unset arrow

unset key

set size 0.35,0.35
set origin 0.1,0.55

set xrange [5.45:6.85]
set yrange [2.2:2.8]

set grid

plot input_data using 1:2 title input_data linestyle 1 pointsize 1.4, \
  gauss1(x) linestyle 2

unset multiplot
