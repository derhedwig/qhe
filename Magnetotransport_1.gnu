clear
reset

set tics out
set xtics nomirror
set ytics nomirror
set y2tics nomirror
set autoscale y2
set decimalsign ',' 

set key left

set xlabel "$\\frac{B}{\\SI{}{T}}$"
set ylabel "$\\frac{R_{xy}}{\\SI{}{k\\Omega}}$"
set y2label "$\\frac{R_{xx}}{\\SI{}{k\\Omega}}$"
set y2range [0:2]

set label "\\scriptsize$\\nu=4$" at 0.1,6.453
set label "\\scriptsize$\\nu=6$" at 0.1,4.302
set label "\\scriptsize$\\nu=8$" at 0.1,3.2265
set label "\\scriptsize$\\nu=10$" at 0.1,2.5812

plot	[0:5] [0:7]\
	"Messungen/no_topgate/no_led/2_up.dat" every 10 using ($1):($4/1000) 				with lines lt 1 title "\\scriptsize $R_{xy}$ an 6 und \\phantom{1}4"	,\
	"Messungen/no_topgate/no_led/1_up.dat" every 10 using ($1):((-1)*($4)/1000) 			with lines lt 3 title "\\scriptsize $R_{xy}$ an 8 und 13"		,\
	"Messungen/no_topgate/no_led/3_up.dat" every 10 using ($1):($4/1000) 		axes x1y2 	with lines lt 5 title "\\scriptsize $R_{xx}$ an 4 und 13"		,\
	"Messungen/no_topgate/no_led/1_up.dat" every 10 using ($1):($2/1000) 		axes x1y2 	with lines lt 7 title "\\scriptsize $R_{xx}$ an 6 und \\phantom{1}8"	,\
	"Messungen/no_topgate/no_led/2_up.dat" every 10 using ($1):((-1)*$2/1000) 	axes x1y2 	with lines lt 9 title "\\scriptsize $R_{xx}$ an 7 und \\phantom{1}8"	,\
	2.5812 lt 8 title "",\
	3.2265 lt 8 title "",\
	4.302 lt 8 title "",\
	6.453 lt 8 title ""

set terminal latex roman 8 size 4.7,4
set output "Magnetotransport_1.tex"

replot
