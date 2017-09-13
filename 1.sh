#!/bin/bash
shuf -i 0-5000 -n 200 >input.txt
xxd -b input.txt | cut -d" " -f 2-7 >1.bin 
v=`cat 1.bin`
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
h=0
z=0
for x in $v
do
#echo "Binary Value :'$x' "
#echo "hamming weight  of $a bit is "
z=$(echo "$x"  |  tr -cd '1' | wc -c)  
#echo "$z"
if [ $z = 0 ]
then
b=$((b+1))
echo "$x"  >> 0.txt
else if [ $z = 1 ]
then
c=$((c+1))
echo "$x"  >> 1.txt
elif [ $z = 2 ]
then
d=$((d+1))
echo "$x"  >> 2.txt
elif [ $z = 3 ]
then
e=$((e+1))
echo "$x"  >> 3.txt
elif [ $z = 4 ]
then
f=$((f+1))
echo "$x"  >> 4.txt
elif [ $z = 5 ]
then
g=$((g+1))
echo "$x"  >> 5.txt
elif [ $z = 6 ]
then
h=$((h+1))
echo "$x"  >> 6.txt
elif [ $z = 7 ]
then
i=$((i+1))
echo "$x"  >> 7.txt
elif [ $z = 8 ]
then
j=$((j+1))
echo "$x"  >> 8.txt
fi
fi
a=$((a+1))
done

sort -u 0.txt > sort0.txt
sort -u 1.txt > sort1.txt 
sort -u 2.txt > sort2.txt 
sort -u 3.txt > sort3.txt 
sort -u 4.txt > sort4.txt 
sort -u 5.txt > sort5.txt 
sort -u 6.txt > sort6.txt 
sort -u 7.txt > sort7.txt 
sort -u 8.txt > sort8.txt 

echo "vector with hamming weight 0 :$b" 
echo "vector with hamming weight 1 :$c"
echo "vector with hamming weight 2 $d" 
echo "vector with hamming weight 3 $e"  
echo "vector with hamming weight 4 :$f"
echo "vector with hamming weight 5 :$g"
echo "vector with hamming weight 6 :$h"
echo "vector with hamming weight 7 :$i"
echo "vector with hamming weight 8 :$j"


 
cat 1.bin | tr -d '\n' | tr -d ' ' >random.txt
v=`cat random.txt`
q=0
b=0
z=0
c=0
x=0
e=0
for x in $v
do
b=$(echo -n $v | wc -c)
echo "the hamming of weight of $b bit is:"
z=$(echo "$x"  |  tr -cd '1' | wc -c) >> output.txt
echo $z
e=$(echo "$z") 
echo "$e" >> $e.txt
done

for x in $v
do
b=$(echo -n $v | wc -c)
echo "$x"  |  tr -cd '1' >> $e.txt
done

