echo "enter a number"
read num
for i in $(seq 1 $num)
do
x=`expr $i \% 2`
if [ $x -eq 1 ]
then
echo $i
fi
done


