#!/bin/bash


VAR0="nginx:alpine"
VAR1=`docker ps | grep $VAR0 | wc -l`
echo $VAR1
if [ $VAR1 -ge 1 ]
then
        echo "Ngninx is running"

else

echo "nginx is not running"

fi