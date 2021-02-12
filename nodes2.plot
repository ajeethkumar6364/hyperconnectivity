set title "No of Nodes in OAS Wireless Access NW Unreliability Analysis"
set xlabel "Time"
set ylabel "no of nodes"
plot "wsnpower.tr" u ($2):($22) t "No of Nodes" w lp
pause -1
