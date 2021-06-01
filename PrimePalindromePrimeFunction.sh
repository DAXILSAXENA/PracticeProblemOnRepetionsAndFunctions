#! /bin/bash -x

# Check prime ,palindrome ,check prime

function checkprime(){
        local number=$1
        d=0
        if [ $number -eq 1 ]
        then
        echo "Number is neither prime nor composite"
        else

        for (( i=1; i<=number; i++ ))
        do
        c=$( echo $number $i | awk '{print $1%$2}' )
        if [ $c -eq 0 ]
        then (( d++ ))
        fi
        if [ $d -gt 3 ]
        then break
        fi
        done

        if [ $d -eq 2 ]
        then
        echo "number is prime"
        else
        echo "number is composite"
        fi
        fi

}

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
        echo $sum
}

read -p "Enter a number:" number

result1="$( checkprime $number )"
sum="$( palindrome $number )"
result2="$( checkprime $sum )"

echo $result1

echo reverse of number is $sum

echo $result2

