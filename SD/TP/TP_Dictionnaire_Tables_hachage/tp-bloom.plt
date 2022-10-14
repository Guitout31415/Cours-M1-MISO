set title 'Analyse des filtres de Bloom'

set xlabel 'Taille du filtre'

set ylabel 'Pourcentage de faux positifs'

set term png
set output 'tp4.png'

plot 'res.txt' index 0 using 1:($5*100) w lp t '#hash 1', \
     '' index 1 using 1:($5*100) w lp t '#hash 2', \
     '' index 2 using 1:($5*100) w lp t '#hash 3', \
     '' index 3 using 1:($5*100) w lp t '#hash 4', \
     '' index 4 using 1:($5*100) w lp t '#hash 5', \
     '' index 5 using 1:($5*100) w lp t '#hash 6', \
     '' index 6 using 1:($5*100) w lp t '#hash 7', \
     '' index 7 using 1:($5*100) w lp t '#hash 8'
     
