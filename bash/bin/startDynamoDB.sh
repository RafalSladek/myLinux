#!/bin/bash
dynamoDBPath="/opt/dynamodb"

echo "[info] go into dynamodb dir"
cd $dynamoDBPath

echo "[info] start dynamodb in memory"
java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -inMemory -sharedDb .
ps -aux |  grep DynamoDB |  head -n 1
