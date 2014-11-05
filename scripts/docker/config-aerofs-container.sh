#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <container-id>"
    exit
fi

docker exec -it $@ /bin/bash -c \
    "cd /tmp && \
    curl -sL https://raw.githubusercontent.com/mpillar/aerofs-upstart/master/quick-install.sh > aerofs.sh && \
    chmod +x aerofs.sh && \
    (./aerofs.sh; rm aerofs.sh)"
