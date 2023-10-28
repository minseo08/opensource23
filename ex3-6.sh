#!/bin/bash
folder_name="$1"

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi
for i in 0 1 2 3 4; do
  touch "$folder_name/file${i}.txt"
  echo "file${i}.txt" > "$folder_name/file${i}.txt"
done

find "$folder_name" -type f -exec tar -rvf "$folder_name/file.tar" {} \;
tar -xvf "$folder_name/file.tar" -C "$folder_name"
