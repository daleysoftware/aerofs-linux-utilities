#!/bin/bash
cd ~/.aerofs
export LD_LIBRARY_PATH=/home/ubuntu/.aerofs-bin/jre/lib/amd64/server:/home/ubuntu/.aerofs-bin/jre/lib/amd64:/home/ubuntu/.aerofs-bin/lib/amd64:/home/ubuntu/.aerofs-bin
export JAVA_OPTS="-Xms0m -Xmx64m"  
/home/ubuntu/.aerofs-bin/aerofsd ~/.aerofs
