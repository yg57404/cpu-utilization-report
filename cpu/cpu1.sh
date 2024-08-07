#!/bin/bash
#export AWS_PROFILE=girnar

#export AWS_PROFILE=aws-devops-read

#export AWS_PROFILE=aws-devops-read

#export AWS_PROFILE=GIBPL
start_time=2022-09-19T11:00:00
end_time=2022-09-26T11:00:00
period=3600

#export AWS_PROFILE=tech
#export AWS_PROFILE=honda
#export AWS_PROFILE=OTO

#region_name=ap-southeast-1
region_name=ap-south-1


utilization()
{
for i in $( cat /home/yogesh/work/cpu/id.txt )
do

    aws --region $region_name ec2 describe-instances --filters "Name=instance-state-name,Values=running" "Name=instance-id,Values=$i" --query 'Reservations[*].Instances[*].{Name:Tags[?Key==`Name`]|[0].Value,Instance:InstanceId,Type:InstanceType,Instances:PrivateIpAddress}' --output text | awk '{print $0 "\t"}' | tr -d '\n' 
echo "$(aws cloudwatch get-metric-statistics --region $region_name --metric-name CPUUtilization --start-time $start_time --end-time $end_time --period $period --namespace AWS/EC2 --statistics Average --dimensions Name=InstanceId,Value=$i --output text |  awk '{print $2 "\t"}'  | sort -nrk1,1  | head -1) "  | tr -d '\n'        
echo "$(aws cloudwatch get-metric-statistics --region $region_name --metric-name CPUUtilization --start-time $start_time --end-time $end_time --period $period --namespace AWS/EC2 --statistics Maximum --dimensions Name=InstanceId,Value=$i --output text | awk '{print $2}' | sort -nrk1,1  | head -1)"
done > file.xls
}

truncate -s 0 file.txt
echo "CPU Utilization"
utilization

printf Instance-Id"\t"Instance-Ip"\t"Instance-Name"\t"Instance-Type"\t"AverageCPU-Utilization"\t"MaxCPU-Utilization"\n" > heading.xls
cat heading.xls file.xls > cpu-report.xls