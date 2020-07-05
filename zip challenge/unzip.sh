#!/bin/bash
type=$(file data)
while [[ $type != *"text"* ]] 
do

    type=$(file data)

    if [[ $type == *"bzip2"* ]]
    then
	    bzip2 -d data
	    mv data.out data
    elif [[ $type ==  *"gzip"* ]]
    then
	    zcat data > data.out
	    mv data.out data
    fi
done
echo "Printing unzipped data..."
cat data
