#!/bin/bash
printf "%-15s %-7s %-7s %-7s %-7s\n" "Файл" "A" "T" "G" "C"
for file in *.fasta; do
	if [ ! -s "$file" ]; then continue; fi
seq=$(grep -v "^>" "$file" | tr -d '\n')
count_a=$(echo "$seq" | grep -o "A" | wc -l)
count_t=$(echo "$seq" | grep -o "T" | wc -l)
count_g=$(echo "$seq" | grep -o "G" | wc -l)
count_c=$(echo "$seq" | grep -o "C" | wc -l)
printf "%-15s %-7s %-7s %-7s %-7s\n" "$file" "$count_a" "$count_t" "$count_g" "$count_c"
done
