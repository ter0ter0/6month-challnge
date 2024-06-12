#! /bin/bash

echo "計算します"
a=10
b=5
c=$(expr $a - $b)
echo "$a - $b = $c"

echo "文字を入力して下さい"
read a
echo "出力します"
echo "$a"


echo "日付を出力します"
date "+%d日、%m月、%Y年、時刻%T"

echo "時間を判別します"
hour=$(date "+%H")
if [ $hour -lt "12" ]; then
	echo "現在の時間は午前"
else
	echo "現在の時間は午後"
fi

#忙しい日カウント
busyday=0
echo "忙しかった日をカウントします"
for busy in 月 火 水 木 金 土 日
do
echo "$busy曜日は忙しかったですか？(yes or no) "
read input
case "$input" in
"yes")
	busyday="$(expr "$busyday" + "1")"
;;
"no")
	continue
;;
*)
	echo "入力が違います"
;;
esac
done
echo "忙しかった日は$busyday日です"


#数字判別
echo "数字を判別します"
echo "数字を入力して下さい"
read num
if [ "$num" -lt "100" ]; then
	echo "100未満です"
elif [ "$num" -ge "100" ] && [ "$num" -lt "1000" ]; then
	echo "100以上1000未満です"
elif [ "$num" -ge "1000" ]; then
	echo "1000以上です"
fi

#デクリメント
echo "デクリメントを実行します"
echo "５以上の数値を入力してください"
read num
if [ "$num" -ge "5" ]; then
	echo "実行します"
while [ "$num" -ge "5" ]; do
	echo "$num"
	num="$(expr $num - 1)"
done
else
	echo "終了します"
fi


#until文
num="5"
echo "until文を開始します"
until [ "$num" -eq "0" ]; do
	echo "$num"
	num="$(expr $num - 1)"
done


#while文
num="5"
echo "while文を開始します"
while [ "$num" != "0" ]; do
        echo "$num"
        num="$(expr $num - 1)"
done


#ランダムスクリプト
num="$(expr $RANDOM % 10)"
echo "ランダムスクリプトを開始しますか？ : (yes or no)"
read you
case "$you" in
"yes")
echo "数値を入力して下さい"
read input
while :
 do
echo "数値を入力して下さい"
if [ "$input" -eq "$num" ]; then
	echo "正解です！"
	break
elif [ "$input" -ge "$num" ]; then
 	echo "数値が大きいです"


elif [ "$input" -lt "$num" ]; then
	echo "数値が小さいです"
fi
read input

done
;;
"no")
echo "終了です"
exit 1
;;
esac


#四則演算
echo "四則演算を開始します"
while :
do
echo  "選択して下さい 1)加算 2)減算 3)乗算 4)徐算 5)終了"
read input
case "$input" in
"1")
echo "加算します"
echo "数値を入力して下さい"
read num
echo "２回目の数値を入力して下さい"
read num2
total="$(expr $num + $num2 )"
echo "合計$totalです"
;;
"2")
echo "減算します"
echo "数値を入力して下さい"
read num
echo "２回目の数値を入力して下さい"
read num2
total="$(expr $num - $num2 )"
echo "合計$totalです"
;;
"3")
echo "乗算します"
echo "数値を入力して下さい"
read num
echo "２回目の数値を入力して下さい"
read num2
total="$(expr $num \* $num2 )"
echo "合計$totalです"
;;
"4")
echo "徐算します"
echo "数値を入力して下さい"
read num
echo "２回目の数値を入力して下さい"
read num2
total="$(expr $num / $num2 )"
echo "合計$totalです"
;;
"5")
echo "終了します"
exit 1
;;
esac
done

#1024まで
echo "1024まで繰り返します"
echo "数値を入力して下さい"
read num
while [ "$num" -lt "1024" ]; do
num="$(expr $num + 1)"
echo "$num"
done
