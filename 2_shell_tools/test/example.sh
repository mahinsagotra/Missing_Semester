#!/bin/bash

echo "Starting program at $(date)" #Date will be substituted

echo "Running program $0 with $# with pid $$"

for file in "$@"; do
	grep foobar "$file" > /dev/null 2> /dev/null
	#When pattern in not found, grep has exit has exit status
	#We redirect STDOUT and STDERR to null registers since we do not care about them
	if [[ "$?" -ne 0 ]]; then 
		echo "File $file does not have any foobar, adding one"
		echo "# foobar" >> "$file"
	fi
done
