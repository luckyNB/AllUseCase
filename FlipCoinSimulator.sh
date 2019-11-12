#!/bin/bash -x
	
	read -p "How much time do you want to flip" numberOfTimes
 
	read -p "How many coin do you want to flip" coins
declare -A coinDictionary

	headCount=0
	tailCount=0
	tailTail=0
	headHead=0
	tailHead=0
	HeadTail=0

	function flipCoin() {
	for (( i=1; i<=$numberOfTimes; i++ ))
		do
		s=""
 		 for(( j=0; j<$coins; j++ ))
 			do
    			resultk=$(( RANDOM % 2 ))

     			 if [ $resultk == 1 ]
				then
   				s=$s"H"
                          headCount=$(( $headCount + 1 ))
                        else
                                s=$s"T"
                          tailCount=$(( $tailCount + 1))
                        fi
                        done
             echo final key : $s
             coinDictionary["$s"]=$(( ${coinDictionary["$s"]} + 1 ))   

              done
}
flipCoin
echo ${coinDictionary[@]}

echo ${!coinDictionary[@]}

	
	
