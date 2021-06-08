#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY

APP_NAME=board
JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME

echo "> $JAR_PATH 배포"
nohup java -jar $JAR_PATH > /dev/null 2> /dev/null < /dev/null &
#!/usr/bin/env bash

REPOSITORY=/home/ssungis/apiGateway/board
cd $REPOSITORY

APP_NAME=airbnb
JAR_NAME=$(ls $REPOSITORY/| grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME
