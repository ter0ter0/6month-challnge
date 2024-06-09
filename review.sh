#! /bin/bash

#計算問題
echo "計算問題です"
a=10
b=5
c="$(expr $a - $b)"
echo "$a-$b=$c"

#文字列表示
echo "文字列表示です"
echo "入力"
read a
echo "出力"
echo $a

#時間表示（日月年時間）
date "+%d日、%m月、%y年、%H時、%M分、時刻%T"

#if文で午前、午後判別
hour="$(date +%H)"
if [ $hour -lt 12 ]; then
	echo "午前です"
else
	echo "午後です"
fi

#忙しい日カウント
echo "busydayをカウントします"
busyday=0
for day in 月 火 水 木 金 土 日;
do
echo "$day曜日は忙しいですか? : yes or no"
read input
case "$input" in

	"yes")
		busyday="$(expr $busyday + 1)"
	;;
	"no")
		continue
	;;

	*)
		echo "入力が違います"
		continue
	;;
esac
done
echo "忙しい日は$busyday日です"

#数字判別
echo "数字を判別します"
echo "数値入力"
read number
if [ $number -lt "100" ]; then
	echo "100未満です"
elif [ $number -ge "100" ] && [ $number -lt "1000" ]; then
	echo "100以上1000未満です"
elif [ $number -ge "1000" ]; then
	echo "1000以上です"
fi


#デクリメント

echo "デクリメントを実行します"
echo "5以上の数値を入力して下さい"
read num

if [ "$num" -ge "5" ]; then
	echo "出力"
while [ "$num" -ge "5" ]; do
	echo "$num"
	num="$(expr $num - 1)"
done
	echo "終了"
else
	echo "5以上の数値を入力して下さい"
fi
