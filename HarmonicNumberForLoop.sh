#! /bin/bash -x

# Calculate harmonic number upto n

harmonicnumber=0

read -p "Enter value till which you want harmonic number:" n

for (( i=1; i<=n; i++ ))

do
        d=$( echo 1 $i | awk '{print $1/$2}' )
        harmonicnumber=$( echo $d $harmonicnumber | awk '{print $1+$2}' )

done
        echo $harmonicnumber
