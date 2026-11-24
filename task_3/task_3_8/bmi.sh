#!/bin/bash
read -p "Масса (в кг): " weight
read -p "Рост (в см): " height
bmi=$(( (weight * 10000) / (height * height) ))
echo "Индекс массы тела : $bmi"
