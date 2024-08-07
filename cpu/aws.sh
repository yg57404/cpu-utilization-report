rm -rf id.txt
aws ec2 describe-instances     --filters Name=instance-state-name,Values=running     --query 'Reservations[*].Instances[*].{Instance:InstanceId}'     --output text >> id.txt
