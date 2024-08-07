#!/bin/bash
region_name=ap-south-1
tag_key=$1
tag_value=$2

tagupdate()
{
for i in $( cat /home/deployer/girnarsoft-insurancedekho-infrastructure/scripts/aws/cpu/resourceid.txt )
do

aws ec2 create-tags --resources $i --tags "Key= $tag_key,Value= $tag_value"

done
}


echo "tag updated for resource"
tagupdate $i


