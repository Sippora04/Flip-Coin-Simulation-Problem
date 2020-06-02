echo "Welcome to Flip Coin Simulation"
#!/bin/bash -x
heads=0
tails=0

	x=$(( RANDOM%2 ))
	if [ $x -eq 0 ]
		then
			heads=$(( $heads + 1 ))
		else
			tails=$(( $tails + 1 ))
	fi

echo "Heads: "$heads
echo "Tails: "$tails
