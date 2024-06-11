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


#until文
echo "until文を実行します"
num=5
until [ "$num" = "0" ]; do
	echo "$num"
	num="$(expr $num - 1)"
done
echo "終了"


#数当てゲーム
num="$(expr $RANDOM % 10)"
echo "数当てゲームを開始します"

while :
do
echo "0~9の数値を入力して下さい"
read input
if [ "$input" -eq "$num" ]; then
	echo "正解です!"
	break
elif [ "$input" -ge "$num" ]; then
	echo "数値が大きいです"
elif [ "$input" -lt "$num" ]; then
	echo "数値が小さいです"
fi
done
echo "終了します"



#ランダム
echo "ランダムスクリプトを開始します"
while [ "$num" != "$input" ]; do
num=$RANDOM
echo "数値を入力してください"
read input
if [ "$input" -lt "$num" ]; then
	echo "入力値の方が数値が小さいです"
else
	echo "入力値の方が数値が大きいです"
fi
done
echo "終了です"

#四則演算
echo "四則演算を開始します"
while :
do
echo "数字を選んでください。: 1)加算 2)減算 3)乗算 4)除算 5)終了"
read input

case "$input" in

1)
	echo "加算します"
	echo "数値を入力して下さい"
	read num
	echo "２回目の数値を入力して下さい"
	read num2
	total="$(expr $num + $num2)"
	echo "合計は$totalです。"
;;
2)
	echo "減算します"
	echo "数値を入力して下さい"
	read num
	echo "２回目の数値を入力して下さい"
	read num2
	total="$(expr $num - $num2)"
	echo "答えは$totalです。"
;;
3)
	echo "乗算します"
	echo "数値を入力して下さい"
	read num
	echo "２回目の数値を入力して下さい"
	read num2
	total="$(expr $num \* $num2)"
	echo "答えは$totalです。"
;;
4)
	echo "徐算します"
	echo "数値を入力して下さい"
	read num
	echo "2回目の数値を入力して下さい"
	read num2
	total="$(expr $num / $num2)"
	echo "答えは$totalです"
;;
5)
	echo "終了です"
	exit 0
;;
esac
done

