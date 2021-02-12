set title "Energy Efficiency in OAS Wireless Access NW Unreliability Analysis"
set xlabel "Time"
set ylabel "Energy in Joules"
plot "wsnpower.tr" u ($2):($14) t "Energy conserved" w lp
pause -1
