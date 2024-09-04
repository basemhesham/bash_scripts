#!/bin/bash

FILE=$1

while read line 
do
 for i in $( echo "$line" | sed "s/,/ /g" )
   do
     if [[ ${#i} -ge 6 && "$i" == *[A-Z]* && "$i" == *[a-z]* && "$i" == *[0-9]* && "$i" == *[\#\$\@]* ]] ; then
        echo "$i is a valid password"
     else 
        echo "$i is not a valid password"
     fi
   done

done < "$FILE"
