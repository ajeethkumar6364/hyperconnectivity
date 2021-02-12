set title "Energy Efficiency in Hyperconnectivity Work"
set xlabel "Time"
set ylabel "Energy in Joules"
plot "wsnpower.tr" u ($2):($14) t "Energy conserved - Normal" w lp, \
     "wsnunr.tr" u ($2):($14) t "Energy conserved - OAS" w lp
     pause -1
