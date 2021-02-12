set title "Delivery Ratio in Hyperconnectivity Work"
set xlabel "Time"
set ylabel "Datapackets"
plot "wsnpower.tr" u ($2):($8) t "Data Delivery Ratio - Normal" w lp,\
	"wsnunr.tr" u ($2):($8) t "Data Delivery Ratio - OAS" w lp
pause -1
