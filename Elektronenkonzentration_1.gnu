clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set decimalsign ',' 

set key top left

set xlabel "$\\frac{B^{-1}}{\\SI{}{T^{-1}}}$"
set ylabel "$\\frac{R_{xx}}{\\SI{}{k\\Omega}}$"

plot [0.2:1.3] "Messungen/no_topgate/no_led/1_up.dat" using (1/($1)):($2/1000) title "" with lines lt 1

set terminal latex roman 8 size 2.75,2.5
set output "Elektronenkonzentration_1.tex"

replot
