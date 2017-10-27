#!/bin/bash
aws ec2 describe-instance-status --instance-ids $1 > lab6.txt

output=`grep running lab6.txt | wc -l`

if [ output -gt 0 ]; then 
echo "The instance is running"
else
echo "No such instance running"

fi

