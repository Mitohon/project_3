#!/bin/bash
for i in {1..10}; do
echo "$i"
touch "test$i.txt"
done
i=10
while [ $i -gt 0 ]; do
echo "$i"
rm "test$i.txt"
let "i--"
done
