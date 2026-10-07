#!/bin/bash
cd $(dirname $0)
DELIM=$'\t'
SUM=0  # 合計用の変数を初期化
for file in control hira kana num alphabet punc-ascii; do
    count=$(cat ${file}.txt | tr -d '\n' | wc -m)
    echo -e "${file}${DELIM}${count}"
    SUM=$((SUM + count))
done
echo -e "sum${DELIM}${SUM}"
