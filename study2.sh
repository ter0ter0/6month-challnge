#! /bin/bash

#1024まで
echo "1024まで繰り返します"
echo "数値を入力して下さい"
read num
while [ "$num" -lt "1024" ]; do
num="$(expr $num + 1)"
echo "$num"
done


#3から6まで順番に表示する
echo "3~6繰り返します"
num="2"
while [ "$num" -lt "6" ]; do
num="$(expr $num + 1)"
echo "$num"
done


#5から2まで表示する
echo "5~2まで表示します"
num="6"
while [ "$num" -ge "3" ]; do
num="$(expr $num - 1 )"
echo "$num"
done


#数列の和を計算する
echo "数列の和を計算します"
num=0
while [ "$num" -lt "10" ]; do
num="$(expr $num + 1)"
a="$(expr $num \* 2)"
total="$(expr $a + $num)"
echo "$total"
done


#99を作成します
i="0"
echo "99を作成します"
while [ "$i" -lt "9" ]; do
i="$(expr $i + 1)"
echo "$iの段です"
a="$(expr $i \* 1)"
total="$(expr $a \* $num)"
echo "$total"
done

