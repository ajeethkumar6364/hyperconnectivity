set title "Data Tranmitted in WSN "
set xlabel "Time"
set ylabel "Datapackets"
plot "wsnunr.tr" u ($2):($8) t "Data Transmitted" w lp
pause -1
