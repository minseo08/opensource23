#!/bin/bash

db_file="DB.txt"
search_name="$1"

result=$(grep "$search_name" "$db_file")

# 결과 출력
if [ -n "$result" ]; then
  echo "$result"
fi
