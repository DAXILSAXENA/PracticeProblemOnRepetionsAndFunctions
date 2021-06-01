#! /bin/bash/ -x

# Magic Number

yes=0
no=1
min=0
max=100
ans=0

echo "Think a number between 1 to 100:"

while [ $(( max -min )) -ne 1 ]
do
        a=$(( ( max + min ) / 2 ))
        read -p "Is number greater than $a (1 for yes and 0 for no):" reply

        if [ $reply -eq 0 ]
        then
        max=$(( ( max + min ) / 2 ))
        if [ $(( max - min )) -eq 1 ]
        then
        answer=$min
        fi
        elif [ $reply -eq 1 ]
        then
        min=$(( ( max + min ) / 2 ))
        if [ $(( max - min )) -eq 1 ]
        then
        answer=$max
        fi
        else
        echo "wrong response"
        fi
done
echo The answer is $answer
