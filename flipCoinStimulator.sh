#!/bin/bash
heads=0;
tails=0;
while [ "$heads" -lt 21 ] && [ "$tails" -lt 21 ]
do
	a=$(( RANDOM%2 ));
	if [ $a == 1 ];
	then
         	heads=$(($heads+1))
	else
        	tails=$(($tails+1))
	fi
done

if [ "$heads" -eq 21 ] && [ "$tails" -eq 21 ]
then
	if [ "$heads" -eq 21 ]
	then    while [ "$(($heads-$tails))" -gt 2 ]
		do	tails=$(($tails+1))
		done
	else
		while [ "$(($tails-$heads))" -gt 2 ]
		do	heads=$(($heads+1))
		done
	fi
elif [ "$heads" -eq 21 ]
then	echo "heads won by " $(($heads-$tails))
else
	echo "tails won by " $(($tails-$heads))
fi
echo "final heads value" $heads
echo "final tails value" $tails
