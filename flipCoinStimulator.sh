#!/bin/bash
heads=0;
tails=0;
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
	a=$(( RANDOM%2 ));
	if [ $a == 1 ];
	then
         	heads=$(($heads+1))
	else
        	tails=$(($tails+1))
	fi
done

echo "Number of head win" $heads
echo "Number of tail win" $tails
