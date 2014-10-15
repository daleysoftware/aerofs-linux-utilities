#!/bin/bash
# Show real memory usage as a percentage of total memory.

total=$(free -m | grep Mem | awk '{print $2}')
used=$(free -m | grep Mem | awk '{print $3}')
buffers=$(free -m | grep Mem | awk '{print $(NF-1)}')
cached=$(free -m | grep Mem | awk '{print $NF}')

percent=$(echo "($used-$cached-$buffers)/$total*100" | bc -l)
printf '%.2f\n' $percent
