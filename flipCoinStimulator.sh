#!/bin/bash
a=$(( RANDOM%2 ));
if [ $a == 1 ];
then
         echo "heads are winner"
else
        echo "tails are winner"
fi
