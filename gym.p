set terminal png
set output 'gym.png'
set title 'users'
set grid
set boxwidth 0.5
set style fill solid
plot "gym.data" using 1:3:xtic(2) with boxes
