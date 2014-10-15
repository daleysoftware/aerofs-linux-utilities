#!/bin/bash
# Script to rm all docker containers. Use with caution!

info="$(docker ps -a | awk '{print $1}' | grep -v CONTAINER)"
if [ "$info" != "" ]
then
    echo "$info" | docker ps -a | awk '{print $1}' | grep -v CONTAINER | xargs docker rm -f
fi
