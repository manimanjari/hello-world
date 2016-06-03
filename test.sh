#!/bin/bash
#my blah
echo -n "Hi  "
whoami
printf "\n"
echo -n "Today's "
date "+date is  %Y-%m-%d and time is %H:%M:%S"
printf "\n"
echo "This month looks like :"
cal
printf "\n"
echo "users currently logged in"
last |grep "logged in" | awk '{print $1}' |uniq
printf "\n"
echo "memory status"
echo -n -e "\t used "
top -l 1 | head -n 10 | grep PhysMem | awk '{print $2}'
echo -n  -e "\t unused "
top -l 1 | head -n 10 | grep PhysMem | awk '{print $6}'
printf "\n"
echo  -n "number of current processes "
ps -u manjari | wc -l | awk '{print $1}'
printf "\n"
echo "disk space status"
echo -n -e "\t used "
df | awk '{sum+=$2;} END {print sum}'
echo -n  -e "\t unused "
df | awk '{sum+=$4;} END {print sum}'