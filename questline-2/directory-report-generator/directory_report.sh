#!/bin/bash

dir=$1

echo "Directory Report" > report.txt
echo "=================" >> report.txt
echo "Total number of files: $(find "$dir" -type f ! -name report.txt | wc -l)" >> report.txt
echo "Total number of executable files: $(find "$dir" -type f ! -name report.txt -executable | wc -l)" >> report.txt
echo "Largest file: $(find "$dir" -type f ! -name report.txt -printf '%s %p\n' | sort -nr | head -1)" >> report.txt
echo "Most recently modified file: $(find "$dir" -type f ! -name report.txt -printf '%T@ %p\n' | sort -nr | head -1)" >> report.txt
echo "Number of hidden files: $(find "$dir" -type f ! -name report.txt -name '.*' | wc -l)" >> report.txt
