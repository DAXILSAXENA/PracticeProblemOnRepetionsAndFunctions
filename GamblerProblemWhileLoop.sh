#! /bin/bash -x

# Write a program wher ea gambler starts with Rs 100 and places 
# Re 1 bet until he/she goes broke i.e. no more money to gamble or
# reaches the goal of Rs. 200. Keeps track of number of times won
# and number of bets made.

won=0
loss=1
money=100
wins=0
bets=0

while [ $money -ge 0 ]

do
        a=$(( RANDOM%2))
        if [ $a -eq 0 ]
        then
        money=$(( money + 1 ))
        if [ $money -eq 200 ]
        then break
        fi
        (( wins++ ))
        else
        money=$(( money - 1 ))
        fi
        if [ $money -eq 0 ]
        then break
        fi
        (( bets++ ))
done

echo "number of wins :" $wins
echo "number of bets :" $bets
