clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set y2tics nomirror
set autoscale y2
set decimalsign ',' 

set key top left

set pointsize 0.05

set xlabel "$\\frac{B}{\\SI{}{T}}$"
set ylabel "$\\frac{R_{xy}}{\\SI{}{k\\Omega}}$"
set y2label "$\\frac{R_{xx}}{\\SI{}{k\\Omega}}$"

set label "\\scriptsize$\\nu=6$" at 0.1,4.302
set label "\\scriptsize$\\nu=8$" at 0.1,3.2265
set label "\\scriptsize$\\nu=10$" at 0.1,2.5812
set label "\\scriptsize$\\nu=12$" at 0.1,2.151
set label "\\scriptsize$\\nu=14$" at 0.1,1.843
plot	[0:] [0:]\
	"Messungen/no_topgate/led/2_up.dat" every 3 using ($1):((-1)*$4/1000) with lines title "\\scriptsize$R_{xy}$ an 13 und 8" lt 7,\
	"Messungen/no_topgate/led/1_up.dat" every 3 using ($1):($4/1000) axes x1y2 with lines title "\\scriptsize$R_{xx}$ an \\phantom{1}6 und 8" lt 3,\
	"Messungen/no_topgate/led/1_up.dat" every 3 using ($1):((-1)*$2/1000) axes x1y2 with lines title "\\scriptsize$R_{xx}$ an 13 und 4" lt 1,\
	"Messungen/no_topgate/led/2_up.dat" every 3 using ($1):($2/1000) axes x1y2 with lines title "\\scriptsize$R_{xx}$ an \\phantom{1}6 und 7" lt 5,\
	2.5812 lt 8 title "",\
	3.2265 lt 8 title "",\
	4.302 lt 8 title "",\
	2.151 lt 8 title "",\
	1.843 lt 8 title ""


set terminal latex roman 8 size 4.7,4
set output "Magnetotransport_led.tex"

replot
