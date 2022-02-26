#!/bin/sh

figlet -f slant recursive_b64
echo "Usage: ./decode.sh file times_to_decode"
counter=$(expr $2 - 1)

tmp=$(cat $1 | base64 -d)

for i in `seq 1 $counter`
do
	tmp=$(echo $tmp | base64 -d)
done

echo "\nPrinting decoded data\n"
echo $tmp
echo "\n"
