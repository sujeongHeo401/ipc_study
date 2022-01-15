#!/bin/bash

lists=$(ls) # ls의 명령
num=${#lists[@]} #개수
index=0
while [ $num -ge 0 ]
do
    echo ${lists[$index]}
    index=`expr $index + 1`
    num=`expr $num - 1`
done