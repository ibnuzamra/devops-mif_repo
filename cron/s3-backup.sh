#!/bin/bash

# Define the S3 bucket and file path
S3_BUCKET="s3://s3-ec2-init"
S3_FILE="backup.zip"

# Define the local path where the file will be downloaded
LOCAL_PATH="/mnt/backup"

# Download the file from S3
aws s3 cp "$S3_BUCKET/$S3_FILE" "$LOCAL_PATH/$S3_FILE"