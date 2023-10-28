#!/bin/bash

num1=$1
operator=$2
num2=$3

if [ "$operator" = "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" = "-" ]; then
    result=$((num1 - num2))
else
    echo "지원하지 않는 연산자입니다: $operator"
    exit 1
fi

# 결과 출력
echo $result

