#!/usr/bin/bash


if [[ -z $1 ]]; then
  echo "Usage: ./automap.sh <IP> <Name>"
  exit 1
fi

if [[ -e $2 ]]; then
  cd $2
else
  mkdir "$2"
  cd "$2"
fi

printf "\n -----NMAP-----\n\n\n" >> "map-of-$1.txt"
echo "nmap is running on ip: $1"
nmap "$1" >> "map-of-$1.txt"
printf "\n\n\n -----WHOIS-----\n\n\n" >> "map-of-$1.txt"
echo "whois is running on ip: $1"
whois "$1" >> "map-of-$1.txt"




# 91.184.0.22
