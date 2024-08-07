#!/bin/bash
#export AWS_PROFILE=girnar
export AWS_PROFILE=aws-devops-read
#export AWS_PROFILE=GIBPL
start_time=2022-07-15T11:00:00
end_time=2022-08-15T11:00:00
period=3600

#export AWS_PROFILE=tech
#export AWS_PROFILE=honda
#export AWS_PROFILE=OTO

#region_name=ap-southeast-1
region_name=ap-south-1


Average()
{
for i in $( cat id.txt )	
do
       	aws cloudwatch get-metric-statistics --region $region_name --metric-name CPUUtilization --start-time $start_time --end-time $end_time --period $period --namespace AWS/EC2 --statistics Average --dimensions Name=InstanceId,Value=$i --output text | awk '{print $2}' | sort -nrk1,1  | head -1
done

echo "   " >> file.txt
}


Maximum()
{
for i in $( cat id.txt )
do
        aws cloudwatch get-metric-statistics --region $region_name --metric-name CPUUtilization --start-time $start_time --end-time $end_time --period $period --namespace AWS/EC2 --statistics Maximum --dimensions Name=InstanceId,Value=$i --output text | awk '{print $2}' | sort -nrk1,1  | head -1
done
}

truncate -s 0 file.txt
echo "Average CPU"
Average

echo " "
echo "Maximum CPU"
Maximum

#awk '{print$1}' file.txt | egrep -ve '^[:blank:]*$' | xargs -n4 echo


