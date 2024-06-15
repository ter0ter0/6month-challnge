#! /bin/bash

#数当てゲーム
echo "数当てゲームを開始します"
num=$(($RANDOM % 10))
while [ "$input" != "$num" ]; do
echo "数値を入力して下さい"
read input
if [ "$input" -lt "$num" ]; then
	echo "数値が小さいです"
elif [ "$input" -gt "$num" ]; then
	echo "数値が大きいです"
fi
done
echo "正解です"


#素因数分解
echo "素因数分解を開始します"
echo "数値を入力して下さい"
read input
i="2"
#入力した数値をiで割り答えをinputとする。
#input=$(($input / $i))
echo "素数は" > file.txt

while [ "$i" -le "$input"  ]; do

#入力した数値をiで割り、余りをnumと定義する。
num=$((input % $i))

#余りが０の場合iを保存する。
if [ "$num" -eq "0" ]; then
	echo "$i" >> file.txt
#入力した数値をiで割り、答えをinputとする。
input=$(($input / $i))

#余りが０以外の場合、iに１を足す。
elif [ "$num" -ne "0" ]; then
	i=$(($i + 1))

fi
done
cat file.txt
> file.txt
