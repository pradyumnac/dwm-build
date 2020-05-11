#!/bin/bash
DIRECTORY=~/.dwm
FILE=$DIRECTORY/autostart.sh
if [[ -d "$DIRECTORY" ]]
then
    echo "$DIRECTORY exist on your filesystem."
    if [[ ! -f "$FILE" ]] 
    then
	echo "Creating hardlink @ $FILE"
	ln autostart.sh $FILE
    else
	echo "$FILE exists! Skipping hardink copy.."	
    fi
else
    echo "$DIRECTORY does not exist. Creating.."
    mkdir $DIRECTORY
    echo "Creating hardlink @ $FILE"
    ln $FILE autostart.sh
fi
