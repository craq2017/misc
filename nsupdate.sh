#!/bin/sh
ADDR=hostname -i
HOST=helper2
#echo "update delete $HOST A" > /var/nsupdate.txt
echo "update add $HOST A $ADDR" >> /var/nsupdate.txt
#echo "update delete $HOST PTR" > /var/nsupdate.txt
#echo "update add $HOST 86400 PTR $ADDR" >> /var/nsupdate.txt
nsupdate /var/nsupdate.txt
