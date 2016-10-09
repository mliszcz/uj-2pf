
set decimalsign locale "pl_PL.UTF-8"

input_data = "wykres_01_06.txt"

g1_excl_start = 2.0
g1_excl_end = 5.5

g2_excl_start = 4.5
g2_excl_end = 8.5

gauss1(x)=A1/(sig*sqrt(2.*pi))*exp(-(x-u1)**2/(2.*sig**2)) + b1*x
gauss2(x)=A2/(sig*sqrt(2.*pi))*exp(-(x-u2)**2/(2.*sig**2)) + b2*x

fit gauss1(x) input_data every ::2 \
  using 1:($1<g1_excl_start || $1>g1_excl_end ? $2 : 1/0) \
  via A1, u1, sig, b1

fit gauss2(x) input_data every ::2 \
  using 1:($1<g2_excl_start || $1>g2_excl_end ? $2 : 1/0) \
  via A2, u2, b2

set terminal png
set output sprintf("output/%s.png", input_data)

set xlabel "położenie detektora [mm]"
set ylabel "natężenie światła [mW/cm^2]"

set title sprintf("Profil natężenia wiązki laserowej (%s)", input_data)

plot input_data using 1:2 title input_data linestyle 2, \
  gauss1(x) linestyle 3, \
  gauss2(x) linestyle 4
