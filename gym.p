set terminal png
set output outputname
set title gymname
set grid
set boxwidth 0.5
set style fill solid
set yrange [0: 40]
plot gymname using 1:3:xtic(2) with boxes
