#!/bin/sh

tmp=$(mktemp)

# Download and tidy.
wget -O - http://projecteuler.net/project/names.txt|
tr -d \" | tr , \\n |
sort|
sed 's/\([A-Z]\)/\1+/g'|
sed -e 's/+$/)/' -e 's/^/*(/' |
cat -n > $tmp

# Map characters to numbers
alphabet='A B C D E F G H I J K L M N O P Q R S T U V W X Y Z'
for number in $(seq 1 26); do
    letter=$(echo $alphabet|cut -d\  -f$number)
    sed -i "s/$letter/$number/g" $tmp
done

# Dunno why this needs to be separated
expression=$(cat $tmp|sed '2,$ s/^/+/'| tr -d \\n)
echo "$expression" | bc
