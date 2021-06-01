#! /bin/bash -x

# Flip coin problem till head or tails win 11 times

Head=0
Tail=1
H=0
T=0

while [ $H -le 10 ] && [ $T -le 10 ]
do
        a=$(( RANDOM % 2 ))

        if [ $a -eq 0 ]
        then
        echo Head
        (( H++ ))

        else
        echo Tail
        (( T++ ))
        fi
done
