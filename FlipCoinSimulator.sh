#!/bin/bash -x

	counter=0
	headDoublet=0
	tailDoublet=0
	declare -A CoinDictionary
	read repetition
		while [ $repetition -gt 0 ]
			do
			event=$((RANDOM%4))	
			if [ $event -eq 0 ]
				then
				CoinDictionary[$((counter++))]="HH"
                                headDoublet=$(($headDoublet + 1))

			elif [ $event -eq 1 ]
				then
				CoinDictionary[$((counter++))]="HT"


			elif [ $event -eq 2 ]
				then
				CoinDictionary[$((counter++))]="TH"



  		       else [ $event -eq 3 ]
				CoinDictionary[$((counter++))]="TT"
                                tailDoublet=$(($tailDoublet + 1))
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
echo "Head Doulbet Percentage" percentage=$(($headDoublet*100/$events))
echo "Tail Doublet Percentage" percentage=$(($tailDoublet*100/$events))
