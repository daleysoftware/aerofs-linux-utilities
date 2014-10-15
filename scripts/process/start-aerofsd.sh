#!/bin/bash
cd ~/.aerofs
export LD_LIBRARY_PATH=~/.aerofs-bin/jre/lib/amd64/server:~/.aerofs-bin/jre/lib/amd64:~/.aerofs-bin/lib/amd64:~/.aerofs-bin
export JAVA_OPTS="-Xms0m -Xmx64m"  
~/.aerofs-bin/aerofsd ~/.aerofs
