#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY


JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME
APP_NAME=$JAR_NAME

echo "> JAR_NAME $JAR_NAME"
echo "> JAR_PATH $JAR_PATH"
echo "> APP_NAME $APP_NAME"

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ]
then
  echo "> 종료할것 없음."
else
  echo "> kill -9 $CURRENT_PID"
  kill -9 $CURRENT_PID
fi

echo "> $JAR_PATH 배포"
nohup java -jar $JAR_PATH &