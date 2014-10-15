#!/bin/bash
# Show the memory of appliations whose name match the pattern "aerofs".

cd $(dirname $0)

pids=$(ps auw | \
    grep -i aerofs | \
    grep -v grep | \
    grep -v show-aerofs-memory | \
    awk '{print $2}')

for pid in $pids
do
    invocation=$(ps a | \
        grep $pid | \
        grep -v grep | \
        awk '{$1=$2=$3=$4=""; print $0}' | \
        sed -e 's/^ *//' -e 's/ *$//')

    echo "$invocation"
    echo -e "\tPID = $pid"
    echo -e "\t$(./show-memory-for-process.sh $pid)"
done
