echo "Welcome to FlipCoinSimulator Problem"
heads=0
tails=0
echo "How many times to flipping a Coin: "
read num
for (( i=1;i<=$num ;i++ ))
do
        x=$(( $RANDOM%2 ))
        if [ $x -eq 0 ]
        then
                heads=$(( $heads + 1 ))

        else
                tails=$(( $tails + 1 ))

        fi
done
echo "Head appear: "$heads
echo "Tail appear: "$tails
