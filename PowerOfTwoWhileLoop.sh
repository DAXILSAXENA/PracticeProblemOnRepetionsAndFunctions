#! /bin/bash -x

# Print 2^n till 256 where n is provided by user in command line

n=$1
b=0
number=0

while [ $b -le 128 ] && [ $b -le $((2**$((n-1)))) ]
do
        b=$(( 2 ** number))
        echo $b
        (( number++ ))
done
