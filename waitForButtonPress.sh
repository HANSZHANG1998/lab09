#!/bin/bash

echo "waiting for button press"

until [ $(gpio read 5) -eq 0 ]
do
	echo "button not pressed"
	sleep 0.25
done

 until [ $(gpio read 5) -eq 1 ]
  do
        echo "button pressed"
	sleep 0.25 		
 done

