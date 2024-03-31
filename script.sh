#!/bin/bash

###################
# Author: Hasham
# Date: 16th-Dec
#
# Version: v1
#
# This script will report the AWS Resource Usage
##################

set -x    # debug mode


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 bucket
echo "Print list of S3 buckets"
aws s3 ls >> /home/hasham/DevOps/AWS_Resource_Monitoring/s3resourceTracker

# list EC2 Instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/hasham/DevOps/AWS_Resource_Monitoring/ec2resourceTracker

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions >> /home/hasham/DevOps/AWS_Resource_Monitoring/lambdaresourceTracker

# list IAM users
echo "Print list of IAM Users"
aws iam list-users >> /home/hasham/DevOps/AWS_Resource_Monitoring/iamresourceTracker

