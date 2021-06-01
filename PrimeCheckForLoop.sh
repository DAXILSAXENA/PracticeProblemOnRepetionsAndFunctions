#! /bin/bash -x

# Check wheather number is prime or not

count=0

read -p "Check for a prime number,Enter positive number please:" number

if [ $number -eq 1 ]

then
echo "Number is neither prime nor composite"

else

for (( i=1; i<=number; i++ ))
do
        c=$( echo $number $i | awk '{print $1%$2}' )
        if [ $c -eq 0 ]
        then (( count++ ))
        fi
done

if [ $count -gt 2 ]
then
        echo "number is composite"
else
        echo "number is prime"
fi
fi
