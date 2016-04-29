clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set border 3
set size 0.6,0.8
set decimalsign ',' 

set key top left

set xlabel "$\\frac{B}{\\SI{}{T}}$"
set ylabel "$\\frac{R_{xy}}{\\SI{}{\\Omega}}$"

f(x) = m*x + b

fit [0:1] f(x) "Messungen/no_topgate/no_led/1_up.dat" using ($1):((-1)*$4) via m,b
plot [0:1] [0:] "Messungen/no_topgate/no_led/1_up.dat" using ($1):((-1)*$4) pointtype 0 title "", \
		f(x) title ""

set terminal latex roman
set output "Elektronenkonzentration_2.tex"

replot
