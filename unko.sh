#! /bin/bash

echo "入力"
read  i
echo "素数は" > unko.txt
while :
do
if [ $(($i / 2)) -eq "1" ]; then
	printf "１" >> unko.txt
	break
else
	echo "no"
	exit 1
fi
done

cat unko.txt
