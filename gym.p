set terminal png size 2000, 2000
set output outputname
set title gymname
set grid
set boxwidth 450
set style fill solid
set yrange [0: 40]
set xrange [fromdate: todate]
set xtics rotate
plot gymname using 1:3:xtic(2) with boxes
