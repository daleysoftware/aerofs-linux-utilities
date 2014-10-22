#!/bin/bash
# Launch your AeroFS Appliance (.qcow.gz format) in EC2.
# We assume your access key and secret are in the enviroment.

set -eux

if [ $# -ne 3 ]
then
    echo "Usage: $0 <security_group> <s3_bucket> <qcow_gz>"
    exit 0
fi

security_group=$1
s3_bucket=$2
qcow_gz=$3

gunzip $qcow_gz

qcow=$(echo $qcow_gz | awk -F '.gz' '{print $1}')
qemu-img convert -O raw $qcow aerofs-appliance.raw

ec2-import-instance \
    -t m3.xlarge \
    -f RAW \
    -a x86_64 \
    -p Linux \
    -o $AWS_ACCESS_KEY -w $AWS_SECRET_KEY \
    -g $security_group \
    -b $s3_bucket aerofs-appliance.raw

ec2-describe-conversion-tasks
