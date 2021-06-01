#! /bin/bash -x

# check a number is palindrome or not

function palindrome(){

        local number=$1
        temp=$number
        sum=0

        while [ $number -gt 0 ]
        do
        r=$(( number % 10 ))
        sum=$(( ( sum * 10 ) + r ))
        number=$(( number / 10 ))
        done

        if [ $temp -eq $sum ]
        then
        echo "number is palindrome"
        else
        echo "number is not palindrome"
        fi
        }

read -p "Enter a number :" number

result="$( palindrome $number )"

echo $result
