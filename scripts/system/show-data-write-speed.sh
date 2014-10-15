#!/bin/bash
# Show data write speed on the given drive. Results in MBit/s.

function get_used_disk_space()
{
    df -a | grep $@ | awk {'print $3'}
}

if [ $# -ne 1 ]
then
    echo "Usage: $0 <drive>"
    exit 1
fi

SECONDS=1

used_previous=$(get_used_disk_space $@)
sleep $SECONDS

used_current=$(get_used_disk_space $@)
diff=$(( $used_current - $used_previous ))
diff=$(bc -l <<< "$diff/1024/10*8")

printf '%.0f\n' $diff
