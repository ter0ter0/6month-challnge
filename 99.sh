#1 /bin/bash

#99を作成します。i×num
i="0"
echo "99を作成します"
while [ "$i" -lt "9" ]; do
i="$(expr $i + 1)"
echo "$iの段です"
a="$(expr $i \* 1)"

num="0"
while [ "$num" -lt "9" ]; do
num="$(expr $num + 1)"
total="$(expr $a \* $num)"
echo "$i×$num=$total"
done
done
