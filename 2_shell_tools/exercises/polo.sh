#!/bin/bash

polo () {
	echo "Before I am in directory $(pwd)"
	cd $currentdir || exit 
	echo "Now I am in directory $(pwd)"
}
