#!/bin/bash

for i in $(seq 1 1000000)
do
       random=$(tr -dc 'A-Za-z0-9!#$%&\()*+,-./:;<=>?@[\]^_{|}~' </dev/urandom | head -c 16)
       echo "SET key$i \"$random\""
done >>  a1.txt
