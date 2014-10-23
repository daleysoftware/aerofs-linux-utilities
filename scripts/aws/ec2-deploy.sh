#!/bin/bash
# Launch your AeroFS Appliance (.qcow.gz format) in EC2.
# We assume your access key and secret are in the enviroment.

set -eu

if [ $# -ne 3 ]
then
    echo "Usage: $(basename $0) <security_group> <s3_bucket> <qcow_gz>"
    exit 0
fi

security_group=$1
s3_bucket=$2
qcow_gz=$3

qcow=$(echo $qcow_gz | awk -F '.gz' '{print $1}')

echo ">> Decompressing image..."
zcat $qcow_gz > $qcow
echo ">> Converting to RAW format..."
qemu-img convert -O raw $qcow aerofs-appliance.raw

echo ">> Importing instance..."
ec2-import-instance \
    -t m3.xlarge \
    -f RAW \
    -a x86_64 \
    -p Linux \
    -o $AWS_ACCESS_KEY -w $AWS_SECRET_KEY \
    -g $security_group \
    -b $s3_bucket aerofs-appliance.raw

echo ">> Instance will be available after conversion:"
ec2-describe-conversion-tasks
