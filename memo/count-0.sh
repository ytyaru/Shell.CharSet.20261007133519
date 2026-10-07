#!/bin/bash
cd "$(dirname "$0")"
DELIM=$'\t'
for file in hira kana num alphabet; do
	echo "$file$DELIM$(cat "${file}.txt" | tr -d '\n' | wc -m)"
#	echo -n "$file";
#	cat "${file}.txt" | tr -d '\n' | wc -m;
done

#cat /tmp/work/Shell.CharSet.20261007133519/memo/hira.txt | tr -d '\n' | wc -m
