#!/bin/bash

# Define the directory path
DIRECTORY="/usr/data/helper-script"

if [ ! -d "$DIRECTORY" ]; then
	git clone https://github.com/Guilouz/Creality-Helper-Script.git /usr/data/helper-script
fi

sh /usr/data/helper-script/helper.sh