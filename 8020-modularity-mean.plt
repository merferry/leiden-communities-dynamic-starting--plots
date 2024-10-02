set term pdf
set terminal pdf size 4in,3.6in
set output '8020-modularity-mean.pdf'


## Set global styles
set termoption dashed
set datafile separator ','
set style fill solid border lt -1
set style textbox opaque noborder
set xtics rotate by 45 right
set format x "10^{%L}"
set format y "%.2f"
set grid y
set xrange [:1e-1]
# set yrange [0.5:1]
set key above font ",12"


## Set line styles
set style line  1 linewidth 2 linetype 6 pointtype 5 dashtype 1
set style line  2 linewidth 2 linetype 7 pointtype 9 dashtype 1
set style line  3 linewidth 2 linetype 2 pointtype 2 dashtype 1
set style line  4 linewidth 2 linetype 8 pointtype 3 dashtype 1
set style line  5 linewidth 2 linetype 8 pointtype 3 dashtype 2


## Draw plot
set logscale x 10
set xlabel  '{/:Bold Batch fraction}'
set ylabel  '{/:Bold Modularity}'
plot '8020.csv' \
     using 4:($17) title 'Static' linestyle  1 with linespoints, \
  '' using 4:($18) title 'ND'     linestyle  2 with linespoints, \
  '' using 4:($19) title 'DS'     linestyle  3 with linespoints, \
  '' using 4:($20) title 'DF'     linestyle  4 with linespoints




## Columns in CSV file.
# 01. graph
# 02. batch_deletions_fraction
# 03. batch_insertions_fraction
# 04. batch_fraction
# 05. lousta-t
# 06. lounai-t
# 07. loudel-t
# 08. loufro-t
# 09. leista-t
# 10. leinai-t
# 11. leidel-t
# 12. leifro-t
# 13. lousta-m
# 14. lounai-m
# 15. loudel-m
# 16. loufro-m
# 17. leista-m
# 18. leinai-m
# 19. leidel-m
# 20. leifro-m
