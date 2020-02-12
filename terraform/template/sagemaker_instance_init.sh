#!/bin/bash

set -e

cd /home/ec2-user/SageMaker
aws s3 cp s3://cc-fraud-detection-lambda-sandom-us-east-1/fraud-detection-using-machine-learning/v0_1/notebooks/sagemaker_fraud_detection.ipynb .
sed -i 's/fraud-detection-end-to-end-demo/cc-fraud-detection-sm-bucket-sandom-us-east-1/g' sagemaker_fraud_detection.ipynb