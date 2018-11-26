#!/bin/bash


for value in {0..3}
do
	if (($1 >> $value & 1))
	then
		gpio write $value 1
	else	
		gpio write $value 0
	fi

done
