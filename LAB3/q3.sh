echo "enter coefficients of quadratic equation"
read a
read b
read c
d=`expr $b \* $b - 4 \* $a \* $c`
d1=`echo "scale=2; sqrt($d)" | bc -l`
echo $d1
if [ $d -gt 0 ]
then
	flag=1
	root1=`expr (-$d + $d1) \/ (2 \* $a) `
	root2=`expr (-$d - $d1) \/ (2 \* $a) `
elif [ $d -eq 0 ]
then
	flag=2
	r=`expr (-$b) \/ (2 \* $a) `
elif [ $d -lt 0 ]
then
	flag=3
	d2=`echo "scale=2; sqrt(-$d)" | bc -l`
	re=`expr (-$b) \/ (2 \* $a) `
	im=`expr $d2 \/ (2 \* $a) `
fi
echo 
case $flag in
	"1")
		echo "roots are $root1 , $root2"
		;;
	"2")
		echo "roots are $r , $r"
		;;
	"3")
		echo "roots are $re + i $im , $re - i $im"
		;;
	*)
		echo "invalid"
		;;
esac