#!/bin/bash


curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz
awk '!/^[[:space:]]*$/' lab3_data.tsv > lab3_data_cleaned.tsv
tr '\t' ',' < lab3_data_cleaned.tsv > lab3_data.csv
total_lines=$(($(wc -l < lab3_data_cleaned.tsv) - 1))
echo "There are $total_lines rows of data in the cleaned TSV file (excluding the header)."

tar -czvf converted-archive.tar.gz lab3_data.csv
