#!/usr/bin/env bash

STACK_NAME=$1

TEMPLATE_BODY="file://couchbase-ee.template"
REGION=$2

ServerInstanceCount=$3
ServerDiskSize="100"
SyncGatewayInstanceCount="0"
InstanceType="m4.xlarge"
Username="Administrator"
Password="password"
KeyName="couchbase-qe"
License="BYOL"

aws cloudformation create-stack \
--capabilities CAPABILITY_IAM \
--template-body ${TEMPLATE_BODY} \
--stack-name ${STACK_NAME} \
--region ${REGION} \
--parameters \
ParameterKey=ServerInstanceCount,ParameterValue=${ServerInstanceCount} \
ParameterKey=ServerDiskSize,ParameterValue=${ServerDiskSize} \
ParameterKey=SyncGatewayInstanceCount,ParameterValue=${SyncGatewayInstanceCount} \
ParameterKey=InstanceType,ParameterValue=${InstanceType} \
ParameterKey=Username,ParameterValue=${Username} \
ParameterKey=Password,ParameterValue=${Password} \
ParameterKey=KeyName,ParameterValue=${KeyName} \
ParameterKey=License,ParameterValue=${License}
