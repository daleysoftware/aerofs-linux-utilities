#!/bin/bash
# Script to build an AeroFS docker image.
cd $(dirname $0)
sudo docker build -t aerofs .
