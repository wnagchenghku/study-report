set terminal postscript eps color enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 2 ps 2 linecolor rgb "#000000"
set style line 2 lt 1 lw 3 pt 12 ps 2 lc rgb "red"
set style line 3 lt 3 lw 2 pt 9 ps 2 lc rgb "#000000"
set style line 4 lt 4 lw 2 pt 7 ps 2 lc rgb "black"
set style line 5 lt 5 lw 2 pt 8 ps 2 lc rgb "#000000"
set style line 6 lt 1 lw 2 pt 5 ps 2 lc rgb "#000000"
set style line 7 lt 7 lw 2 pt 11 ps 2 lc rgb "#000000"
set style line 8 lt 8 lw 2 pt 11 ps 1 lc rgb "#d97c19"
set style line 9 lt 9 lw 4 pt 12 ps 2 lc rgb "#000000"

set key left
set xtics ("3" 3,"5" 5,"7" 7, "9" 9)
set ylabel "Consensus latency (us)"
set xlabel "Number of replicas"
set xrange [3:9]
set yrange [0:1600]
set ytics ("400" 400, "800" 800, "1200" 1200, "1600" 1600)

plot 'paxos_latency.dat' using 1:2 with linespoints title "LibPaxos" ls 1,'paxos_latency.dat' using 1:3 with linespoints title "ZooKeeper" ls 7, 'paxos_latency.dat' using 1:4 with linespoints title "CRANE" ls 6, 'paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 5

unset yrange
unset ytics
