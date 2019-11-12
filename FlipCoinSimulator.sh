#!/bin/bash -x
event=$((RANDOM%2))
	if [ $event -eq 0 ]
		then
  	echo "Head"
         else
             echo "Tail"
        fi

