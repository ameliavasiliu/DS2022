#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

cat lab3_data.tsv | tr -s '\n' > cleanedlabdata.tsv

tr '\t' ',' < cleanedlabdata.tsv > cleanedlab3.csv

linecount=$(tail -n +2 cleanedlab3.csv | wc -l)

echo "the number of lines is $linecount"

tar -czvf converted-archive.tar.gz cleanedlab3.csv

