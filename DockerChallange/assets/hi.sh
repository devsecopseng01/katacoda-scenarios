#!/bin/bash


VAR0="wordpress"
VAR1=`docker ps | grep $VAR0 | wc -l`
VAR2=`curl docker:80 -s | grep Empanadas | wc -l`

if [ $VAR1 -ge 1 ] && [ $VAR2 -ge 1 ]
then
        echo "${VAR0} is running"

else

echo "${VAR0} is not running"

fi