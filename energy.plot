set title "Energy Conserved in WSN "
set xlabel "Time"
set ylabel "Energy in Joules"
plot "wsnunr.tr" u ($2):($14) t "Energy conserved" w lp
pause -1
