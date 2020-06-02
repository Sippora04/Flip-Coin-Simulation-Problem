#!/bin/bash -x
echo "Welcome to FlipCoinSimulator Problem"

heads=0
tails=0

while [[ $heads -le 21 || $tails -le 21 ]]
do
	random=$(( $RANDOM%2 ))
   if [[ $random == 0 ]]
     	then
			if [ $heads -lt 21 ]
				then
					heads=$(( $heads + 1 ))
			else
					break
			fi
   else
			if [ $tails -lt 21 ]
            then
               tails=$(( $tails + 1 ))
         else
               break
         fi
	fi
done
echo "Head appear: "$heads
echo "Tail appear: "$tails

if [[ $heads -eq $tails ]]
	then
		echo "Its a TIE"
		diff=$(($heads-$tails))
		while [[ $diff -le 2 ]]
			do
				random=$(( RANDOM%2 ))
				if [[ $random -eq 0 ]]
					then
						heads=$(($heads+1))
						diff=$(($diff+2))
					else
						tails=$(($tails+1))
						diff=$(($diff+2))
				fi
		done
		echo "Head: $heads Tail: $tails"
		elif [ $heads -gt $tails ]
			then
				diff=$(($heads-$tails))
      		echo "Heads won by $diff"
				elif [ $tails -gt $heads ]
					then
						diff=$(($tails-$heads))
						echo "Tails won by $diff"
fi
