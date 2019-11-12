#!/bin/bash -x
	counter=0
	headTripplet=0
	tailTripplet=0
	H=0
	T=0
        HH=0
        HT=0
	TT=0
	TH=0
        HHH=0
        HHT=0
        HTH=0
        THH=0
        TTT=0
        TTH=0
        THT=0
        HTT=0
	#function singletCount(){
	#echo 
	#}
	#function doubletCount(){
	#}
	#function tripletCount(){
	#}

        
	declare -A CoinDictionary
	read repetition

rep=$repetition

while [ $rep -gt 0 ]
			do
			event=$((RANDOM%2))	
			if [ $event -eq 0 ]
				then
				CoinDictionary[$((counter++))]="H"
                                H=$(($H + 1))
  		       else
				CoinDictionary[$((counter++))]="T"
                                T=$(($T + 1))
        		fi
			rep=$(($rep - 1))
		done




	while [ $repetition -gt 0 ]
			do
			event=$((RANDOM%8))
  case $event in 
      0)
		CoinDictionary[$((counter++))]="HHH"
              HHH=$(($HHH + 1));;
    1)
		CoinDictionary[$((counter++))]="HHT"
      	      HHT=$(($HHT + 1));;
    2)
		CoinDictionary[$((counter++))]="HTH"
	      HTH=$(($HTH + 1))       	 
       ;;
      
    3)
		CoinDictionary[$((counter++))]="THH"
	      THH=$(($THH + 1)) 
      		;;
    4)
		CoinDictionary[$((counter++))]="TTT"
    	      TTT=$(($TTT + 1));;    
    5)   
	  	CoinDictionary[$((counter++))]="TTH"
    	      TTT=$(($TTT + 1))    
       		;;    
    6)  
        	CoinDictionary[$((counter++))]="THT"
    	      TTH=$(($TTH + 1))    
      		;;    
    7)
		CoinDictionary[$((counter++))]="HTT"
    	      HTT=$(($HTT + 1))    
     		;;     
	
	esac

		repetition=$(($repetition -1))
	done	

finalArrayOfCoins[1]=$H;
finalArrayOfCoins[2]=$T;
finalArrayOfCoins[3]=$HHH;
finalArrayOfCoins[4]=$HHT;
finalArrayOfCoins[5]=$HTH;
finalArrayOfCoins[6]=$THH;
finalArrayOfCoins[7]=$TTT;
finalArrayOfCoins[8]=$TTH;
finalArrayOfCoins[9]=$THT;
finalArrayOfCoins[10]=$HTT;

echo $(printf "%s\n"${!finalArrayOfCoins[@]} | sort -n)




	
	
