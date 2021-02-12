set title "Average signaling overhead Analysis in OAS Wireless Access NW"
set xlabel "Time"
set ylabel "Avg signaling overhead"
plot "wsnpower.tr" u ($2):($11) t "overhead" w lp
pause -1
