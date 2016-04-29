clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set key top left
set decimalsign ',' 

set xlabel "$\\frac{U_{\\text{top}}}{\\SI{}{mV}}$"
set ylabel "$\\frac{n_e}{\\SI{10^15}{m^{-2}}}$"

f(x) = m*x+b
g(x) = A*exp(x)+D
A=-1
D=4.8

FIT_LIMIT = -1e-5

fit f(x) "Elektronenkonzentration_topgate.dat" using ($1):($3) via m,b
#fit g(x) "Elektronenkonzentration_topgate.dat" using ($1):($3) via A,D
plot 	\
	"Elektronenkonzentration_topgate.dat" using ($1):($3) pointtype 2 title "",\
	f(x) title "Fit" with lines lt 1

set terminal latex roman 8
set output "Elektronenkonzentration_topgate.tex"

replot
