#! /bin/bash -x

# factorial of a given number

factorial=1

read -p "Enter any number for which you want factorial:" number

if [ $number -eq 0 ]
then
echo "Factorial of 0 is 1"
else
	for (( i=1; i<=number; i++ ))
	do
	factorial=$(( factorial * $i ))
	done

echo factorial is $factorial
fi
