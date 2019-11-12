#!/bin/bash -x

	counter=0
	head=0
	tail=0
	declare -A CoinDictionary
	read repetition
		while [ $repetition -gt 0 ]
			do
			event=$((RANDOM%2))	
			if [ $event -eq 0 ]
				then
				CoinDictionary[$((counter++))]="Head"
                                head=$(($head + 1))
  		       else
				CoinDictionary[$((counter++))]="Tail"
                                tail=$(($tail + 1))
        		fi
			repetition=$(($repetition - 1))
		done
	echo "All events" ${CoinDictionary[@]}

	counter=0
  	  for key in ${!CoinDictionary[@]}
			do
				CoinArray[((counter++))]=${CoinDictionary[$key]}
			done

events=${#CoinDictionary[@]}
echo "Number of events" ${#CoinDictionary[@]}
echo "Array" ${CoinArray[@]}
echo "Head Percentage" percentage=$(($head*100/$events))
echo "Tail Percentage" percentage=$(($tail*100/$events))

