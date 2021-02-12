set title "Delivery Ratio in OAS Wireless Access NW Unreliability Analysis"
set xlabel "Time"
set ylabel "Datapackets"
plot "wsnpower.tr" u ($2):($8) t "Data Delivery Ratio" w lp
pause -1
