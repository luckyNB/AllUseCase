#!/bin/bash -x

	counter=0
	headTripplet=0
	tailTripplet=0
	declare -A CoinDictionary
	read repetition
	while [ $repetition -gt 0 ]
			do
			event=$((RANDOM%8))
  case $event in 
      0)
		CoinDictionary[$((counter++))]="HHH"
        	headTripplet=$(($headTripplet + 1));;
     1)
		CoinDictionary[$((counter++))]="HHT";;
      
     2)
		CoinDictionary[$((counter++))]="HTH"
       	        ;;
      
     3)
		CoinDictionary[$((counter++))]="THH"
      		;;
    4)
		CoinDictionary[$((counter++))]="TTT"
    	      tailTripplet=$(($tailTripplet + 1));;    
    5)   
	  	CoinDictionary[$((counter++))]="TTH"
       		;;    
   6)  
        	CoinDictionary[$((counter++))]="THT"
      		;;    
   7)
		CoinDictionary[$((counter++))]="HTT"
     		;;     
	
	esac

		repetition=$(($repetition -1))
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
echo "Head Doulbet Percentage" percentage=$(($headTripplet*100/$events))
echo "Tail Doublet Percentage" percentage=$(($tailTripplet*100/$events))


