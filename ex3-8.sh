#!/bin/bash
db_file="DB.txt"

name="$1"
info="$2"

echo "$name $info" >> "$db_file"

