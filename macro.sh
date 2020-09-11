#!/bin/bash

curentpath=$(pwd)
echo $currentpath
while [ "$currentpath" != "/" ]; 
do
	cd..
	currentpath=$(pwd)
	echo $currentpath
done
