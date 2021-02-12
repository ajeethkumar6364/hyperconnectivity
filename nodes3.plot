set title "No of Lives Nodes Hyperconnectivity"
set xlabel "Time"
set ylabel "no of nodes"
plot "wsnpower.tr" u ($2):($22) t "No of Nodes - Normal" w lp,\
"wsnunr.tr" u ($2):($22) t "No of Nodes - OAS" w lp
pause -1
