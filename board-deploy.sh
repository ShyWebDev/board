#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY

APP_NAME=airbnb
JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ]
then
  echo "> 종료할것 없음."
else
  echo "> kill -9 $CURRENT_PID"
  kill -9 $CURRENT_PID
  sleep 5
fi

echo "> $JAR_PATH 배포"
nohup java -jar -Dspring.profiles.active=prod $JAR_PATH > /dev/null 2> /dev/null < /dev/null &
#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY

APP_NAME=airbnb
JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME
