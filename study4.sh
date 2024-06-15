#! /bin/bash

echo "ブラックジャックを開始します"
total="0"

while [ "$total" -le "21" ]; do
echo "カードを引きますか？：（yes or no）"
read input
case "$input" in

"yes")
card=$(($RANDOM % 10))
echo "$card"
total=$(($card + $total))
;;

"no")
echo "ゲームを終了します"
break
;;
esac
done
echo "合計$totalです"
