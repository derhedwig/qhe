clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set key top left
set decimalsign ',' 

set output "Magnetotransport_topgate.tex"
set terminal latex roman 8 size 4.7,6

set multiplot layout 2,1

set ylabel "$\\frac{R_{xy}}{\\SI{}{k\\Omega}}$"
set lmargin 10
set label "\\scriptsize$\\nu=2$" at 0.1,12.906
set label "\\scriptsize$\\nu=4$" at 0.1,6.453
set label "\\scriptsize$\\nu=6$" at 0.1,4.302
set label "\\scriptsize$\\nu=8$" at 0.1,3.2265
set label "\\scriptsize$\\nu=10$" at 0.1,2.5812
plot	[0:] [0:]\
	"Messungen/topgate/7_down.dat" every 5 using ($1):((-1)*$4/1000) title "\\scriptsize$\\SI{200}{mV}$" with lines,\
	"Messungen/topgate/9_down.dat" every 5 using ($1):($4/1000) title "\\scriptsize$\\SI{150}{mV}$" with lines lt 5,\
	"Messungen/topgate/1_down.dat" every 5 using ($1):($4/1000) title "\\scriptsize$\\SI{0}{mV}$" with lines,\
	2.5812 lt 8 title "",\
	3.2265 lt 8 title "",\
	4.302 lt 8 title "",\
	6.453 lt 8 title "",\
	12.906 lt 8 title ""


set xlabel "$\\frac{B}{\\SI{}{T}}$"
set ylabel "$\\frac{R_{xx}}{\\SI{}{k\\Omega}}$"
unset label
set lmargin 10
plot	[0:] [0:]\
	"Messungen/topgate/7_down.dat" every 5 using ($1):($2/1000) title "\\scriptsize$\\SI{200}{mV}$" with lines lt 1,\
	"Messungen/topgate/9_up.dat" every 5 using ($1):($2/1000) title "\\scriptsize$\\SI{150}{mV}$" with lines lt 3,\
	"Messungen/topgate/8_up.dat" every 5 using ($1):($2/1000) title "\\scriptsize$\\SI{100}{mV}$" with lines lt 5,\
	"Messungen/topgate/5_up.dat" every 5 using ($1):($4/1000) title "\\scriptsize$\\SI{20}{mV}$" with lines lt 7,\
	"Messungen/topgate/3_up.dat" every 5 using ($1):($4/1000) title "\\scriptsize$\\SI{0}{mV}$" with lines lt 9
