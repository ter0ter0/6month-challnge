#! /bin/bash


echo "神経衰弱を開始します"

while true; do
card=$(($RANDOM % 10))
card2=$(($RANDOM % 2))
card3=$(($RANDOM % 4))
card4=$(($RANDOM % 6))
card5=$(($RANDOM % 10))


echo "カードを引きますか？ : (yes or no)"
read input
case "$input" in

	"yes")
	echo "1枚目を引きます"
	echo "$card"
	;;


	"no")
	echo "ゲームを終了します"
	exit 1
	;;

esac

echo "2枚目どこを引きますか？ : (上 下 左 右 )"
read input2
case "$input2" in

	"上")
	echo "2枚目を引きます"
	echo "$card2"
	;;

	"下")
	echo "2枚目を引きます"
	echo "$card3"
	;;

	"左")
	echo "2枚目を引きます"
	echo "$card4"
	;;

	"右")
	echo "2枚目を引きます"
	echo "$card5"
	;;
esac

if [[ "$card" == "$card2" || "$card" == "$card3" || "$card" == "$card4" || "$card" == "$card5" ]]; then
	echo "正解です！"
break

else
	echo "カードが一致しません。もう一度引き直して下さい"
fi
done
