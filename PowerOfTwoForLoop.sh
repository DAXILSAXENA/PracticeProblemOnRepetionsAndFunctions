#! /bin/bash -x

# Table of power of 2 that are equal to or less than n

read -p "Enter value till which you want power of two :" value

for (( i=0; i<=value; i++ ))
do
c=$(( 2**i ))
echo 2^$i = $c
done
