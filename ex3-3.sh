#!/bin/bash
weight="$1"
height="$2"
calculate_bmi() {
    local w="$1"
    local h="$2"
    local bmi
    bmi=$((w * 10000 / (h * h)))
    echo "$bmi"
}
determine_weight_status() {
    local bmi="$1"
    if [ "$bmi" -lt 18 ]; then
        echo "저체중입니다."
    elif [ "$bmi" -lt 23 ]; then
        echo "정상체중입니다."
    else
        echo "과체중입니다."
    fi
}
bmi=$(calculate_bmi "$weight" "$height")
weight_status=$(determine_weight_status "$bmi")
echo "$weight_status"
