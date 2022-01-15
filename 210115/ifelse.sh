#!/bin/bash

if [ $1 -eq $2 ]
then
    echo "same values"
else
    echo "different values"

fi
# 결과  ./ifelse.sh 1 2
# 결과  different values
# 결과   ./ifelse.sh 1 1
# 결과  same values

​