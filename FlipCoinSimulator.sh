echo "Welcome to FlipCoinSimulator Problem"
echo
heads=0
tails=0
echo "How many times to flipping a Coin: "
read num

for (( i=1; i<=$num; i++ ))
#while [[ $heads -lt $num ]] || [[ $tails -lt $num ]]
do
        x=$(( $RANDOM%2 ))
        if [ $x -eq 0 ]
        then
                heads=$(( $heads + 1 ))
               if [ $heads -eq $num ]
                  then
                     break
               fi

        else
                tails=$(( $tails + 1 ))
               if [ $tails -eq $num ]
                  then
                     break
               fi
        fi
done
echo "Head appear: "$heads
echo "Tail appear: "$tails

if [ $heads -gt $tails ]
   then
      diff=$(($heads-$tails))
      echo "Heads won by $diff"
   elif [ $tails -gt $heads ]
      then
         diff=$(($tails-$heads))
         echo "Tails won by $diff"
   else
      echo "Its a TIE"
fi
