set title "Average signaling Overheaad Hyperconnectivity Work"
set xlabel "Time"
set ylabel "Avg signaling overhead"
plot "wsnpower.tr" u ($2):($11) t "overhead - Normal" w lp ,\
"wsnunr.tr" u ($2):($11) t "overhead - OAS" w lp
pause -1
