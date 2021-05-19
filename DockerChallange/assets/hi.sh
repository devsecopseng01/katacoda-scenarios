#!/bin/bash


VAR0="wordpress"
VAR1=`docker ps | grep $VAR0 | wc -l`
VAR2=`curl docker:8080 -s | grep Empanadas | wc -l`
echo $VAR1
echo $VAR2
if [ $VAR1 -ge 1 ] && [ $VAR2 -ge 1 ]
then
        echo "Nginx is running"

else

echo "nginx is not running"

fi