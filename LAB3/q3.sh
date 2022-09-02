echo "enter coefficients of quadratic equation"
read a
read b
read c
d=`expr $b \* $b - 4 \* $a \* $c`
d1=`echo "scale=4; sqrt($d)" | bc`
echo $d1
if [ d -gt 0 ]
then

