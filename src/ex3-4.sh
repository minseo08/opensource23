#!/bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

case "$answer" in
  "yes" | "Yes" | "YES" | "y" | "Y")
    echo "yes"
    ;;
  "no" | "No" | "NO" | "n" | "N" | "nono" | "nonono")
    echo "no"
    ;;
  *)
    echo "yes 또는 no로 입력해 주세요."
    ;;
esac

