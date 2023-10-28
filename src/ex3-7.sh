#!/bin/bash
folder_name="$1"
if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

for i in 0 1 2 3 4; do
  touch "$folder_name/file${i}.txt"
  echo "file${i}.txt" > "$folder_name/file${i}.txt"
  folder_subname="file${i}"

  mkdir -p "$folder_name/$folder_subname"
  ln -s "../file${i}.txt" "$folder_name/$folder_subname/file${i}.txt"
done

