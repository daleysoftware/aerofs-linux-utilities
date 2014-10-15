#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <pid>"
    exit 1
fi

ps -p $1 -O rss | \
gawk '\
{
    count ++;
    sum += $2
};
END {
     count --;
     print "Total memory usage =", sum/1024, "MB";
};'
