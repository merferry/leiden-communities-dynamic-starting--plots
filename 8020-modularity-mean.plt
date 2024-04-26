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
set grid y
set yrange [0.4:1]
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
     using 4:($9 ) title 'Static' linestyle  1 with linespoints, \
  '' using 4:($10) title 'ND'     linestyle  2 with linespoints, \
  '' using 4:($11) title 'DT'     linestyle  3 with linespoints, \
  '' using 4:($12) title 'DF'     linestyle  4 with linespoints




## Columns in CSV file.
# 01. graph
# 02. batch_deletions_fraction
# 03. batch_insertions_fraction
# 04. batch_fraction
# 05. sta-t
# 06. nai-t
# 07. del-t
# 08. fro-t
# 09. sta-m
# 10. nai-m
# 11. del-m
# 12. fro-m
# 13. sta-s
# 14. nai-s
# 15. del-s
# 16. fro-s
