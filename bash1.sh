#! /bin/bash
papka=$1
if [ ! -d "$papka" ]
then 
echo "Данной папки нет"
exit
fi
for m in $1/*
do 
if [ -f "$m" ]
then
m=${m##/*/};
echo ${m%.*c} >> /d/simvol.txt;
fi
if [ -d "$m" ]
then
for p in $m/*.doc
do
p=${p##/*/};
echo ${p%.*c} >> /d/simvol.txt;
done
fi
done
IFS=$'\n'
for n in $(cat simvol.txt);
do
count=0;
while [ -n "$n" ]
do
z=${n:0:1};
n=${n//$z/};
count=$((count + 1));
done
echo $count >> /d/result.txt;
done 
 

