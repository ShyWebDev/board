#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY

APP_NAME=board
JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)
echo "> pid $CURRENT_PID"

if [ -z $CURRENT_PID ]
then
  echo "> 종료할것 없음."
else
  echo "> kill -9 $CURRENT_PID"
  kill -9 $CURRENT_PID
fi

echo "> $JAR_PATH 배포"
nohup java -jar $JAR_PATH &