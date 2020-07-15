#!/bin/bash -x
#UC1
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c

#UC2
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
echo $(( $a+$b*$c ))

#UC3
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
echo $(( $a*$b+$c ))

#UC4
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
echo $(( $c+$a/$b ))

#UC5
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
echo $(( $a%$b+$c ))

#UC6
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
declare -A computation
computation[add]=$(( $a+$b*$c ))
computation[mul]=$(( $a*$b+$c ))
computation[div]=$(( $c+$a/$b ))
computation[mod]=$(( $a%$b+$c ))

#UC7
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
declare -A computation
computation[1]=$(( $a+$b*$c ))
computation[2]=$(( $a*$b+$c ))
computation[3]=$(( $c+$a/$b ))
computation[4]=$(( $a%$b+$c ))
index=0;
for i in ${!computation[@]}
do
        array[((index++))]=${computation[$i]}
done
echo ${array[@]}

#UC8
read -p "Enter a value for a: " a
read -p "Enter a value for b: " b
read -p "Enter a value for c: " c
declare -A computation
computation[1]=$(( $a+$b*$c ))
computation[2]=$(( $a*$b+$c ))
computation[3]=$(( $c+$a/$b ))
computation[4]=$(( $a%$b+$c ))
index=0;
for i in ${!computation[@]}
do
        array[((index++))]=${computation[$i]}
done
n=${#array[@]};
function sort() {
for ((i = 0; i<n; i++))
do

    for((j = 0; j<n-i-1; j++))
    do

        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
}
function desc() {
for(( i=n-1; i>=0; i-- ))
do
 echo ${array[i]}
done
}
sort
desc
