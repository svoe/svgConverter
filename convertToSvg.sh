#!/bin/bash

mode="jpg"

for file in *."$mode"; do
	if [ -f "$file" ]; then 
        #convert "$file".png file.pnm
		echo "converting $file..."
		convert "$file" "$file.pnm"
		echo "tracing..."
		potrace "$file.pnm" -s -o "$file.svg"
		echo "cleaning up..."
		rm "$file.pnm"   
    fi 
done

exec $SHELL
