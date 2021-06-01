#! /bin/bash -x

# Range of prime number between two numbers

count=0

read -p "Enter lower limit:" number1
read -p "Enter upper limit:" number2

for (( j=number1; j<=number2; j++ ))

do

for (( i=1; i<=j; i++ ))
do
        c=$( echo $j $i | awk '{print $1%$2}' )
        if [ $c -eq 0 ]
        then (( count++ ))
        fi
done

if [ $count -eq 2 ]
then
        echo $j
fi
count=0
done
